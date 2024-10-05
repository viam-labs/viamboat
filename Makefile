
bin/viamboatmodule: go.mod *.go cmd/module/*.go
	go build -o bin/viamboatmodule cmd/module/cmd.go

bin/viamboat: go.mod *.go cmd/remote/*.go
	go build -o bin/viamboat cmd/remote/cmd.go

lint:
	gofmt -s -w .

sample: bin/viamboat
	./bin/viamboat data/sample.json

update:
	go get go.viam.com/rdk@latest
	go get github.com/erh/gonmea@main
	go mod tidy

test:
	go test ./...


module.tar.gz: bin/viamboatmodule start.sh
	strip bin/viamboatmodule
	tar czf $@ $^

module: module.tar.gz

all: test bin/viamboat module 


