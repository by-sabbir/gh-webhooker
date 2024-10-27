.PHONY: build

tag := v1.0.1


build:
	GOOS=windows GOARCH=amd64 go build -o build/gh-webhooker-windows-amd64.exe
	GOOS=linux GOARCH=amd64 go build -o build/gh-webhooker-linux-amd64
	GOOS=darwin GOARCH=amd64 go build -o build/gh-webhooker-darwin-amd64

release: build
	gh release create v1.0.1 ./build/*amd64*
