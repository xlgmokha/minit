SHELL = /bin/sh

clean:
	@rm -f ./bin/minit

build:
	@go build -o ./bin/minit main.go

test-unit:
	@go test ./...

test-integration: build
	@./bin/minit -h

test: test-unit test-integration

