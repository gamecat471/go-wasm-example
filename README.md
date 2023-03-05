# go webassembly example

## reference

https://golangbot.com/webassembly-using-go/

## build

~~~bash
# javascript glue
$ cp "$(go env GOROOT)/misc/wasm/wasm_exec.js" ./assets/

# build
$ make build
~~~

## web server

~~~bash
$ make server
~~~

- http://localhost:8080
