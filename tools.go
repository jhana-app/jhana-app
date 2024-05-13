//go:build tools && !codeanalysis
// +build tools,!codeanalysis

// This will allow go modules to see the dependency for tools when generating code.
//
// You can invoke it from anywhere within your module using go run <github.com/vektah/dataloaden> and always get the pinned version.
//nolint

package main

import (
	// graphql
	_ "github.com/vektah/dataloaden"
	_ "github.com/vektra/mockery/v2"
)
