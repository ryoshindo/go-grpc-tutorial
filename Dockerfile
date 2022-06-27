FROM golang:1.18

WORKDIR /go/src/github.com/ryoshindo/go-grpc-tutorial

COPY go.mod go.sum ./

RUN go install \
    google.golang.org/protobuf/cmd/protoc-gen-go \
    google.golang.org/grpc/cmd/protoc-gen-go-grpc \
    github.com/cosmtrek/air
