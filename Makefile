bin/viamboatmodule: go.mod *.go cmd/module/*.go
	go build -ldflags "-s -w" -o $@ ./cmd/module
	upx -9 $@

bin/viamboat: go.mod *.go cmd/remote/*.go
	go build -o bin/viamboat cmd/remote/cmd.go

lint:
	gofmt -s -w .

sample: bin/viamboat
	./bin/viamboat data/sample.json

updaterdk:
	go get go.viam.com/rdk@latest
	go mod tidy

updategonmea:
	go get github.com/erh/gonmea@main
	go mod tidy

test:
	go test ./...


module.tar.gz: bin/viamboatmodule start.sh
	strip bin/viamboatmodule
	tar czf $@ $^

module: module.tar.gz

all: test bin/viamboat module 


