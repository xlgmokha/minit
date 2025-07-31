SHELL = /bin/sh

clean:
	@rm -f ./bin/minit

build:
	@go build -o ./bin/minit main.go

test: build
	@go test ./...
