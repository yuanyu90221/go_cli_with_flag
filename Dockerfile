#FROM scratch
FROM golang:1.14-alpine

WORKDIR /bin

COPY . /bin/
#COPY helloworld /bin/

RUN cd /bin && go build -o helloworld
#ADD helloworld /bin/

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD ["/bin/helloworld", "-ping"]

ENTRYPOINT ["/bin/helloworld"]
