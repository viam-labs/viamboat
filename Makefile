
bin/viamboat: *.go cmd/*.go
	go build -o bin/viamboat cmd/cmd.go 

lint:
	gofmt -s -w .
