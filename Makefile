
bin/viamboat: go.mod *.go cmd/*.go
	go build -o bin/viamboat cmd/cmd.go 

lint:
	gofmt -s -w .

sample: bin/viamboat
	./bin/viamboat data/sample.json

updaterdk:
	go get go.viam.com/rdk@latest
	go mod tidy
