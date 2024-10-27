.PHONY: build

tag := $(shell git describe --tags --abbrev=0)


build:
	GOOS=windows GOARCH=amd64 go build -o build/gh-webhooker-windows-amd64.exe
	GOOS=linux GOARCH=amd64 go build -o build/gh-webhooker-linux-amd64
	GOOS=darwin GOARCH=amd64 go build -o build/gh-webhooker-darwin-amd64

release: build
	gh release create $(tag) ./build/*amd64* --latest
