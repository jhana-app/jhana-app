package config

import (
	"bufio"
	"context"
	"errors"
	"fmt"
	"os"
	"reflect"
	"strings"

	"github.com/chigopher/pathlib"
	"github.com/jinzhu/copier"
	"github.com/mitchellh/mapstructure"
	"github.com/rs/zerolog"
	"github.com/spf13/viper"
	"github.com/vektra/mockery/v2/pkg/logging"
	"github.com/vektra/mockery/v2/pkg/stackerr"
	"golang.org/x/tools/go/packages"
	"gopkg.in/yaml.v3"
)

var (
	ErrNoConfigFile         = fmt.Errorf("no config file exists")
	ErrNoGoFilesFoundInRoot = fmt.Errorf("no go files found in root search path")
	ErrPkgNotFound          = fmt.Errorf("package not found in config")
)

type Interface struct {
	Config Config `mapstructure:"config"`
}

type Config struct {
	All                  bool                   `mapstructure:"all"`
	BuildTags            string                 `mapstructure:"tags"`
	Case                 string                 `mapstructure:"case"`
	Config               string                 `mapstructure:"config"`
	Cpuprofile           string                 `mapstructure:"cpuprofile"`
	Dir                  string                 `mapstructure:"dir"`
	DisableConfigSearch  bool                   `mapstructure:"disable-config-search"`
	DisableVersionString bool                   `mapstructure:"disable-version-string"`
	DryRun               bool                   `mapstructure:"dry-run"`
	Exported             bool                   `mapstructure:"exported"`
	FileName             string                 `mapstructure:"filename"`
	InPackage            bool                   `mapstructure:"inpackage"`
	InPackageSuffix      bool                   `mapstructure:"inpackage-suffix"`
	KeepTree             bool                   `mapstructure:"keeptree"`
	LogLevel             string                 `mapstructure:"log-level"`
	MockName             string                 `mapstructure:"mockname"`
	Name                 string                 `mapstructure:"name"`
	Note                 string                 `mapstructure:"note"`
	Outpkg               string                 `mapstructure:"outpkg"`
	Output               string                 `mapstructure:"output"`
	Packages             map[string]interface{} `mapstructure:"packages"`
	Packageprefix        string                 `mapstructure:"packageprefix"`
	Print                bool                   `mapstructure:"print"`
	Profile              string                 `mapstructure:"profile"`
	Quiet                bool                   `mapstructure:"quiet"`
	Recursive            bool                   `mapstructure:"recursive"`
	Exclude              []string               `mapstructure:"exclude"`
	SrcPkg               string                 `mapstructure:"srcpkg"`
	BoilerplateFile      string                 `mapstructure:"boilerplate-file"`
	// StructName overrides the name given to the mock struct and should only be nonempty
	// when generating for an exact match (non regex expression in -name).
	StructName     string   `mapstructure:"structname"`
	TestOnly       bool     `mapstructure:"testonly"`
	UnrollVariadic bool     `mapstructure:"unroll-variadic"`
	Version        bool     `mapstructure:"version"`
	WithExpecter   bool     `mapstructure:"with-expecter"`
	ReplaceType    []string `mapstructure:"replace-type"`

	// Viper throws away case-sensitivity when it marshals into this struct. This
	// destroys necessary information we need, specifically around interface names.
	// So, we re-read the config into this map outside of viper.
	// https://github.com/spf13/viper/issues/1014
	_cfgAsMap      map[string]any
	pkgConfigCache map[string]*Config
}

func NewConfigFromViper(v *viper.Viper) (*Config, error) {
	c := &Config{
		Config: v.ConfigFileUsed(),
	}

	packages, err := c.GetPackages(context.Background())
	if err != nil {
		return c, fmt.Errorf("failed to get packages: %w", err)
	}

	// Set defaults
	if len(packages) == 0 {
		v.SetDefault("dir", ".")
	} else {
		v.SetDefault("dir", "mocks/{{.PackagePath}}")
		v.SetDefault("filename", "mock_{{.InterfaceName}}.go")
		v.SetDefault("mockname", "Mock{{.InterfaceName}}")
		v.SetDefault("outpkg", "{{.PackageName}}")
		v.SetDefault("with-expecter", true)
		v.SetDefault("dry-run", false)
		v.SetDefault("log-level", "info")
	}

	if err := v.UnmarshalExact(c); err != nil {
		return nil, fmt.Errorf("failed to unmarshal config: %w", err)
	}

	return c, nil
}

func (c *Config) Initialize(ctx context.Context) error {
	log := zerolog.Ctx(ctx)
	if err := c.discoverRecursivePackages(ctx); err != nil {
		return fmt.Errorf("failed to discover recursive packages: %w", err)
	}

	log.Trace().Msg("merging in config")
	if err := c.mergeInConfig(ctx); err != nil {
		return err
	}
	return nil
}

// CfgAsMap reads in the config file and returns a map representation, instead of a
// struct representation. This is mainly needed because viper throws away case-sensitivity
// in the `packages` section, which won't work when defining interface names 😞
func (c *Config) CfgAsMap(ctx context.Context) (map[string]any, error) {
	log := zerolog.Ctx(ctx)

	configPath := pathlib.NewPath(c.Config)

	if c._cfgAsMap == nil {
		log.Debug().Msgf("config map is nil, reading: %v", configPath)
		newCfg := make(map[string]any)

		fileBytes, err := os.ReadFile(configPath.String())
		if err != nil {
			if os.IsNotExist(err) {
				log.Debug().Msg("config file doesn't exist, returning empty config map")
				return map[string]any{}, nil
			}
			return nil, stackerr.NewStackErrf(err, "failed to read file: %v", configPath)
		}

		if err := yaml.Unmarshal(fileBytes, newCfg); err != nil {
			return nil, stackerr.NewStackErrf(err, "failed to unmarshal yaml")
		}
		c._cfgAsMap = newCfg
	}
	return c._cfgAsMap, nil
}

func (c *Config) getDecoder(result any) (*mapstructure.Decoder, error) {
	return mapstructure.NewDecoder(&mapstructure.DecoderConfig{
		ErrorUnused:          true,
		Result:               result,
		IgnoreUntaggedFields: true,
	})
}

// GetPackages returns a list of the packages that are defined in
// the `packages` config section.
func (c *Config) GetPackages(ctx context.Context) ([]string, error) {
	// NOTE: The reason why we can't rely on viper to get the
	// values in the `packages` section is because viper throws
	// away maps with no values. Our config allows empty maps,
	// so this breaks our logic. We need to manually parse this section
	// instead. See: https://github.com/spf13/viper/issues/819
	log := zerolog.Ctx(ctx)
	cfgMap, err := c.CfgAsMap(ctx)
	if err != nil {
		return nil, err
	}
	packagesSection, ok := cfgMap["packages"]
	if !ok {
		log.Debug().Msg("packages section is not defined")
		return []string{}, nil
	}
	packageSection, ok := packagesSection.(map[string]any)
	if !ok {
		msg := "packages section is of the wrong type"
		log.Error().Msg(msg)
		return []string{}, fmt.Errorf(msg)
	}
	packages := []string{}
	for key := range packageSection {
		packages = append(packages, key)
	}
	return packages, nil
}

func (c *Config) getPackageConfigMap(ctx context.Context, packageName string) (map[string]any, error) {
	cfgMap, err := c.CfgAsMap(ctx)
	if err != nil {
		return nil, err
	}
	packageSection := cfgMap["packages"].(map[string]any)
	configUnmerged, ok := packageSection[packageName]
	if !ok {
		return nil, ErrPkgNotFound
	}
	configAsMap, isMap := configUnmerged.(map[string]any)
	if isMap {
		return configAsMap, nil
	}
	return map[string]any{}, nil

}
func (c *Config) GetPackageConfig(ctx context.Context, packageName string) (*Config, error) {
	log := zerolog.Ctx(ctx)

	if c.pkgConfigCache == nil {
		log.Debug().Msg("package cache is nil")
		c.pkgConfigCache = make(map[string]*Config)
	} else if pkgConf, ok := c.pkgConfigCache[packageName]; ok {
		log.Debug().Msgf("package cache is not nil, returning cached result")
		return pkgConf, nil
	}

	pkgConfig := reflect.New(reflect.ValueOf(c).Elem().Type()).Interface()
	if err := copier.Copy(pkgConfig, c); err != nil {
		return nil, fmt.Errorf("failed to copy config: %w", err)
	}
	pkgConfigTyped := pkgConfig.(*Config)

	configMap, err := c.getPackageConfigMap(ctx, packageName)
	if err != nil {
		return nil, stackerr.NewStackErrf(err, "unable to get map config for package")
	}

	configSection, ok := configMap["config"]
	if !ok {
		log.Debug().Msg("config section not provided for package")
		return pkgConfigTyped, nil
	}

	decoder, err := c.getDecoder(pkgConfigTyped)
	if err != nil {
		return nil, stackerr.NewStackErrf(err, "failed to get decoder")
	}
	if err := decoder.Decode(configSection); err != nil {
		return nil, err
	}
	c.pkgConfigCache[packageName] = pkgConfigTyped
	return pkgConfigTyped, nil
}

func (c *Config) ExcludePath(path string) bool {
	for _, ex := range c.Exclude {
		if strings.HasPrefix(path, ex) {
			return true
		}
	}
	return false
}

func (c *Config) ShouldGenerateInterface(ctx context.Context, packageName, interfaceName string) (bool, error) {
	pkgConfig, err := c.GetPackageConfig(ctx, packageName)
	if err != nil {
		return false, err
	}

	interfacesSection, err := c.getInterfacesSection(ctx, packageName)
	if err != nil {
		return false, err
	}
	_, interfaceExists := interfacesSection[interfaceName]
	return pkgConfig.All || interfaceExists, nil
}

func (c *Config) getInterfacesSection(ctx context.Context, packageName string) (map[string]any, error) {
	pkgMap, err := c.getPackageConfigMap(ctx, packageName)
	if err != nil {
		return nil, err
	}
	interfaceSection, exists := pkgMap["interfaces"]
	if !exists {
		return make(map[string]any), nil
	}
	return interfaceSection.(map[string]any), nil
}

func (c *Config) GetInterfaceConfig(ctx context.Context, packageName string, interfaceName string) ([]*Config, error) {
	log := zerolog.
		Ctx(ctx).
		With().
		Str(logging.LogKeyQualifiedName, packageName).
		Str(logging.LogKeyInterface, interfaceName).
		Logger()
	ctx = log.WithContext(ctx)
	configs := []*Config{}

	pkgConfig, err := c.GetPackageConfig(ctx, packageName)
	if err != nil {
		return nil, stackerr.NewStackErrf(err, "failed to get config for package when iterating over interface")
	}
	interfacesSection, err := c.getInterfacesSection(ctx, packageName)
	if err != nil {
		return nil, err
	}

	// Copy the package-level config to our interface-level config
	pkgConfigCopy := reflect.New(reflect.ValueOf(pkgConfig).Elem().Type()).Interface()
	if err := copier.Copy(pkgConfigCopy, pkgConfig); err != nil {
		return nil, stackerr.NewStackErrf(err, "failed to create a copy of package config")
	}
	baseConfigTyped := pkgConfigCopy.(*Config)

	interfaceSection, ok := interfacesSection[interfaceName]
	if !ok {
		log.Debug().Msg("interface not defined in package configuration")
		return []*Config{baseConfigTyped}, nil
	}

	interfaceSectionTyped, ok := interfaceSection.(map[string]any)
	if !ok {
		// check if it's an empty map... sometimes we just want to "enable"
		// the interface but not provide any additional config beyond what
		// is provided at the package level
		if reflect.ValueOf(&interfaceSection).Elem().IsZero() {
			return []*Config{baseConfigTyped}, nil
		}
		msgString := "bad type provided for interface config"
		log.Error().Msgf(msgString)
		return nil, stackerr.NewStackErr(errors.New(msgString))
	}

	configSection, ok := interfaceSectionTyped["config"]
	if ok {
		log.Debug().Msg("config section exists for interface")
		// if `config` is provided, we'll overwrite the values in our
		// baseConfigTyped struct to act as the "new" base config.
		// This will allow us to set the default values for the interface
		// but override them further for each mock defined in the
		// `configs` section.
		decoder, err := c.getDecoder(baseConfigTyped)
		if err != nil {
			return nil, stackerr.NewStackErrf(err, "unable to create mapstructure decoder")
		}
		if err := decoder.Decode(configSection); err != nil {
			return nil, stackerr.NewStackErrf(err, "unable to decode interface config")
		}
	} else {
		log.Debug().Msg("config section for interface doesn't exist")
	}

	configsSection, ok := interfaceSectionTyped["configs"]
	if ok {
		log.Debug().Msg("configs section exists for interface")
		configsSectionTyped := configsSection.([]any)
		for _, configMap := range configsSectionTyped {
			// Create a copy of the package-level config
			currentInterfaceConfig := reflect.New(reflect.ValueOf(baseConfigTyped).Elem().Type()).Interface()
			if err := copier.Copy(currentInterfaceConfig, baseConfigTyped); err != nil {
				return nil, stackerr.NewStackErrf(err, "failed to copy package config")
			}

			// decode the new values into the struct
			decoder, err := c.getDecoder(currentInterfaceConfig)
			if err != nil {
				return nil, stackerr.NewStackErrf(err, "unable to create mapstructure decoder")
			}
			if err := decoder.Decode(configMap); err != nil {
				return nil, stackerr.NewStackErrf(err, "unable to decode interface config")
			}

			configs = append(configs, currentInterfaceConfig.(*Config))
		}
		return configs, nil
	}
	log.Debug().Msg("configs section doesn't exist for interface")

	if len(configs) == 0 {
		configs = append(configs, baseConfigTyped)
	}
	return configs, nil
}

// addSubPkgConfig injects the given pkgPath into the `packages` config section.
// You specify a parentPkgPath to inherit the config from.
func (c *Config) addSubPkgConfig(ctx context.Context, subPkgPath string, parentPkgPath string) error {
	log := zerolog.Ctx(ctx).With().
		Str("parent-package", parentPkgPath).
		Str("sub-package", subPkgPath).Logger()

	log.Trace().Msg("adding sub-package to config map")
	parentPkgConfig, err := c.getPackageConfigMap(ctx, parentPkgPath)
	if err != nil {
		log.Err(err).
			Msg("failed to get package config for parent package")
		return fmt.Errorf("failed to get package config: %w", err)
	}

	log.Trace().Msg("getting config")
	cfg, err := c.CfgAsMap(ctx)
	if err != nil {
		return fmt.Errorf("failed to get configuration map: %w", err)
	}

	log.Trace().Msg("getting packages section")
	packagesSection := cfg["packages"].(map[string]any)

	// Don't overwrite any config that already exists
	_, pkgExists := packagesSection[subPkgPath]
	if !pkgExists {
		log.Trace().Msg("sub-package doesn't exist in config")
		packagesSection[subPkgPath] = map[string]any{}
		newPkgSection := packagesSection[subPkgPath].(map[string]any)
		newPkgSection["config"] = parentPkgConfig["config"]
	} else {
		log.Trace().Msg("sub-package exists in config")
		// The sub-package exists in config. Check if it has its
		// own `config` section and merge with the parent package
		// if so.
		subPkgConfig, err := c.getPackageConfigMap(ctx, subPkgPath)

		if err != nil {
			log.Err(err).Msg("could not get child package config")
			return fmt.Errorf("failed to get sub-package config: %w", err)
		}

		for key, val := range parentPkgConfig {
			if _, keyInSubPkg := subPkgConfig[key]; !keyInSubPkg {
				subPkgConfig[key] = val
			}

		}
	}

	return nil
}

func (c *Config) subPackages(
	ctx context.Context,
	pkgPath string,
	pkgConfig *Config,
	currentDepth int,
) ([]string, error) {
	log := zerolog.Ctx(ctx)

	pkgs, err := packages.Load(&packages.Config{
		Mode: packages.NeedName | packages.NeedFiles,
	}, pkgPath)
	if err != nil {
		return nil, fmt.Errorf("failed to load packages: %w", err)
	}
	pkg := pkgs[0]

	if currentDepth == 0 && len(pkg.GoFiles) == 0 {
		log.Error().
			Err(ErrNoGoFilesFoundInRoot).
			Str("documentation", "https://vektra.github.io/mockery/notes/#error-no-go-files-found-in-root-search-path").
			Msg("package contains no go files")
		return nil, ErrNoGoFilesFoundInRoot
	}
	representativeFile := pathlib.NewPath(pkg.GoFiles[0])
	searchRoot := representativeFile.Parent()
	packageRootName := pathlib.NewPath(pkg.PkgPath)
	packageRootPath := searchRoot
	subPackages := []string{}

	walker, err := pathlib.NewWalk(
		searchRoot,
		pathlib.WalkAlgorithm(pathlib.AlgorithmBasic),
		pathlib.WalkFollowSymlinks(false),
		pathlib.WalkVisitDirs(false),
		pathlib.WalkVisitFiles(true),
	)
	if err != nil {
		return nil, fmt.Errorf("failed to create filesystem walker: %w", err)
	}

	visitedDirs := map[string]any{}
	subdirectoriesWithGoFiles := []*pathlib.Path{}

	// We consider the searchRoot to already be visited because
	// we know it's already in the configuration.
	visitedDirs[searchRoot.String()] = nil

	// Walk the filesystem path, starting at the root of the package we've
	// been given. Note that this will always work because Golang downloads
	// the package when we call `packages.Load`
	walkErr := walker.Walk(func(path *pathlib.Path, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}

		file, err := path.OpenFile(os.O_RDONLY)
		if err != nil {
			return err
		}
		defer file.Close()

		_, haveVisitedDir := visitedDirs[path.Parent().String()]
		if !haveVisitedDir && strings.HasSuffix(path.Name(), ".go") {
			// Skip auto-generated files
			scanner := bufio.NewScanner(file)
			for scanner.Scan() {
				text := scanner.Text()
				if strings.Contains(text, "DO NOT EDIT") {
					log.Debug().Stringer("path", path).Msg("skipping file as auto-generated")
					return nil
				} else if strings.HasPrefix(text, "package ") {
					break
				}
			}

			l := log.With().Stringer("path", path.Parent()).Logger()
			l.Debug().Msg("subdirectory has a .go file, adding this path to packages config")
			subdirectoriesWithGoFiles = append(subdirectoriesWithGoFiles, path.Parent())
			visitedDirs[path.Parent().String()] = nil
		}
		return nil
	})
	if walkErr != nil {
		return nil, fmt.Errorf("error occured during filesystem walk: %w", walkErr)
	}

	// Parse the subdirectories we found into their respective fully qualified
	// package paths
	for _, d := range subdirectoriesWithGoFiles {
		relativeFilesystemPath, err := d.RelativeTo(packageRootPath)
		if err != nil {
			log.Err(err).Stringer("root", packageRootPath).Stringer("subRoot", d).Msg("failed to make subroot relative to root")
			return nil, fmt.Errorf("failed to make subroot relative to root: %w", err)
		}
		absolutePackageName := packageRootName.Join(relativeFilesystemPath.Parts()...)
		subPackages = append(subPackages, absolutePackageName.String())
	}

	return subPackages, nil
}

// discoverRecursivePackages parses the provided config for packages marked as
// recursive and recurses the file tree to find all sub-packages.
func (c *Config) discoverRecursivePackages(ctx context.Context) error {
	log := zerolog.Ctx(ctx)
	recursivePackages := map[string]*Config{}
	packages, err := c.GetPackages(ctx)
	if err != nil {
		return fmt.Errorf("failed to get packages: %w", err)
	}
	for _, pkg := range packages {
		pkgConfig, err := c.GetPackageConfig(ctx, pkg)
		if err != nil {
			return fmt.Errorf("failed to get package config: %w", err)
		}
		if pkgConfig.Recursive {
			recursivePackages[pkg] = pkgConfig
		}
	}
	if len(recursivePackages) == 0 {
		return nil
	}
	for pkgPath, conf := range recursivePackages {
		pkgLog := log.With().Str("package-path", pkgPath).Logger()
		pkgCtx := pkgLog.WithContext(ctx)
		pkgLog.Debug().Msg("discovering sub-packages")
		subPkgs, err := c.subPackages(pkgCtx, pkgPath, conf, 0)
		if err != nil {
			return fmt.Errorf("failed to get subpackages: %w", err)
		}
		for _, subPkg := range subPkgs {
			subPkgLog := pkgLog.With().Str("sub-package", subPkg).Logger()
			subPkgCtx := subPkgLog.WithContext(pkgCtx)

			subPkgLog.Debug().Msg("adding sub-package config")
			if err := c.addSubPkgConfig(subPkgCtx, subPkg, pkgPath); err != nil {
				subPkgLog.Err(err).Msg("failed to add sub-package config")
				return fmt.Errorf("failed to add sub-package config: %w", err)
			}
		}
	}
	log.Trace().Msg("done discovering recursive packages")

	return nil

}

func contains[T comparable](slice []T, elem T) bool {
	for _, element := range slice {
		if elem == element {
			return true
		}
	}
	return false
}

// mergeInConfig takes care of merging inheritable configuration
// in the config map. For example, it merges default config, then
// package-level config, then interface-level config.
func (c *Config) mergeInConfig(ctx context.Context) error {
	log := zerolog.Ctx(ctx)

	log.Trace().Msg("getting packages")
	pkgs, err := c.GetPackages(ctx)
	if err != nil {
		return err
	}

	log.Trace().Msg("getting default config")
	defaultCfg, err := c.CfgAsMap(ctx)
	if err != nil {
		return err
	}
	for _, pkgPath := range pkgs {
		pkgLog := log.With().Str("package-path", pkgPath).Logger()
		pkgLog.Trace().Msg("merging for package")
		packageConfig, err := c.getPackageConfigMap(ctx, pkgPath)
		if err != nil {
			pkgLog.Err(err).Msg("failed to get package config")
			return fmt.Errorf("failed to get package config: %w", err)
		}
		configSectionUntyped, configExists := packageConfig["config"]
		if !configExists {
			packageConfig["config"] = defaultCfg
			continue
		}
		packageConfigSection := configSectionUntyped.(map[string]any)

		for key, value := range defaultCfg {
			if contains([]string{"packages", "config"}, key) {
				continue
			}
			_, keyExists := packageConfigSection[key]
			if !keyExists {
				packageConfigSection[key] = value
			}
		}
		interfaces, err := c.getInterfacesForPackage(ctx, pkgPath)
		if err != nil {
			return fmt.Errorf("failed to get interfaces for package: %w", err)
		}
		for _, interfaceName := range interfaces {
			interfacesSection, err := c.getInterfacesSection(ctx, pkgPath)
			if err != nil {
				return err
			}
			interfaceSectionUntyped, exists := interfacesSection[interfaceName]
			if !exists {
				continue
			}
			interfaceSection, ok := interfaceSectionUntyped.(map[string]any)
			if !ok {
				// assume interfaceSection value is nil
				continue
			}

			interfaceConfigSectionUntyped, exists := interfaceSection["config"]
			if !exists {
				interfaceSection["config"] = map[string]any{}
			}

			interfaceConfigSection, ok := interfaceConfigSectionUntyped.(map[string]any)
			if !ok {
				// Assume this interface's value in the map is nil. Just skip it.
				continue
			}
			for key, value := range packageConfigSection {
				if key == "packages" {
					continue
				}
				if _, keyExists := interfaceConfigSection[key]; !keyExists {
					interfaceConfigSection[key] = value
				}
			}
		}
	}

	return nil

}

func (c *Config) getInterfacesForPackage(ctx context.Context, pkgPath string) ([]string, error) {
	interfaces := []string{}
	packageMap, err := c.getPackageConfigMap(ctx, pkgPath)
	if err != nil {
		return nil, err
	}
	interfacesUntyped, exists := packageMap["interfaces"]
	if !exists {
		return interfaces, nil
	}

	interfacesMap := interfacesUntyped.(map[string]any)
	for key := range interfacesMap {
		interfaces = append(interfaces, key)
	}
	return interfaces, nil
}
