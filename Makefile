build:
	GOOS=js GOARCH=wasm go build -o ./assets/json.wasm ./cmd/wasm/

server:
	go run ./cmd/server/main.go

.PHONY: build server