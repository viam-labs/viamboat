
bin/viamboatmodule: go.mod *.go cmd/module/*.go
	go build -o bin/viamboatmodule cmd/module/cmd.go

bin/viamboat: go.mod *.go cmd/remote/*.go
	go build -o bin/viamboat cmd/remote/cmd.go

lint:
	gofmt -s -w .

sample: bin/viamboat
	./bin/viamboat data/sample.json

updaterdk:
	go get go.viam.com/rdk@latest
	go mod tidy

test:
	go test

module: bin/viamboatmodule
	tar czf module.tar.gz bin/viamboatmodule

all: test module 


