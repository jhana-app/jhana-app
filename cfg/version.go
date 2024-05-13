package cfg

import (
	"fmt"
	"os"
	"strings"
)

const versionFile = "/etc/version"

type Version string

const maximumVersionLength = 100

func GetVersion(defaultVersion string) (Version, error) {
	if _, err := os.Stat(versionFile); err != nil {
		if os.IsNotExist(err) {
			return Version(defaultVersion), nil
		}
		return "", err
	}

	versionRaw, err := os.ReadFile(versionFile)
	if err != nil {
		return "", err
	}

	version := strings.TrimSpace(string(versionRaw))
	if len(version) > maximumVersionLength {
		return "", fmt.Errorf("version in not valid")
	}

	return Version(version), nil
}

func MustGetVersion(defaultVersion string) Version {
	version, err := GetVersion(defaultVersion)
	if err != nil {
		return Version(defaultVersion)
	}
	return version
}
