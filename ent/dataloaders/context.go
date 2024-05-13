package dataloaders

import (
	"context"
	"errors"
)

type dataLoaderKey struct{}

// Get extracts data loaders from the context or return error.
func Get(ctx context.Context) (*Loaders, error) {
	obj := ctx.Value(dataLoaderKey{})
	if obj == nil {
		return nil, errors.New("can't get dataloader from the context")
	}
	loader, casted := obj.(*Loaders)
	if !casted {
		return nil, errors.New("can't cast dataloader from the context")
	}
	return loader, nil
}

// MustGet extracts data loader from the context.
func MustGet(ctx context.Context) *Loaders {
	loader, err := Get(ctx)
	if err != nil {
		panic(err)
	}
	return loader
}

// WithLoader adds loaders to the context.
func WithLoader(ctx context.Context, loaders *Loaders) context.Context {
	return context.WithValue(ctx, dataLoaderKey{}, loaders)
}
