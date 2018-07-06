FROM golang:1.10.3

WORKDIR /go/src/
ADD build.sh /tmp/build.sh

RUN tmp/build.sh