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

## health check option for docker 
```script==
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD ["/bin/helloworld", "-ping"]
```

## how to build
```script===
make docker
```
## how to run
```script==
docker run -p 4000:8080 json/helloworld
``` 

## how to check status
```script==
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD ["/bin/helloworld", "-ping"]
```