
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

bin/candump:
	cp /usr/bin/candump bin/

bin/analyzer:
	cp /usr/local/bin/analyzer bin/

bin/candump2analyzer:
	cp /usr/local/bin/candump2analyzer bin/


module.tar.gz: bin/viamboatmodule bin/candump bin/candump2analyzer bin/analyzer start.sh
	tar czf $@ $^

module: module.tar.gz

all: test bin/viamboat module 


