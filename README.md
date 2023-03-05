# go webassembly example

## reference

https://golangbot.com/webassembly-using-go/

## JSON formatter

~~~
{"website":"golangbot.com", "tutorials": {"string":"https://golangbot.com/strings/", "maps":"https://golangbot.com/maps/", "goroutine":"https://golangbot.com/goroutines/", "channels":"https://golangbot.com/channels/"}}
~~~

convert to

~~~
{
  "tutorials": {
    "channels": "https://golangbot.com/channels/",
    "goroutine": "https://golangbot.com/goroutines/",
    "maps": "https://golangbot.com/maps/",
    "string": "https://golangbot.com/strings/"
  },
  "website": "golangbot.com"
}
~~~

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
- open console and input

~~~
formatJSON('{"website":"golangbot.com", "tutorials": {"string":"https://golangbot.com/strings/", "maps":"https://golangbot.com/maps/", "goroutine":"https://golangbot.com/goroutines/", "channels":"https://golangbot.com/channels/"}}')
~~~