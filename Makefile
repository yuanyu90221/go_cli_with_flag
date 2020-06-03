build_linux_amd64:
	CGO_ENABLE=0	GOOS=linux GOARCH=amd64 go build -v -a -o  helloworld

build_windows_amd64:
	go build -v -a -o helloworld

docker:
	docker build -t json/helloworld .