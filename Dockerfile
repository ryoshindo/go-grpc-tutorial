FROM golang:1.17

RUN apt-get -y update \
    && apt-get -y install protobuf-compiler

WORKDIR /go/src/github.com/ryoshindo/go-grpc-tutorial

COPY go.mod go.sum ./

RUN go install \
    github.com/cosmtrek/air \
    google.golang.org/protobuf/cmd/protoc-gen-go \
    google.golang.org/grpc/cmd/protoc-gen-go-grpc
