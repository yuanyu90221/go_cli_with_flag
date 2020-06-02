# go_cli_with_flag

## introduction

    this project is use flag package to allow this function could be run with flag import

## example

```golang==
	flag.StringVar(&port, "port", "8080", "server port") // -port 8080
	flag.StringVar(&port, "p", "8080", "server port")    // -p 8080
	flag.Parse()
```
## run with -p or -port

```script
go run main.go -p 1213
```