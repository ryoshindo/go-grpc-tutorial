protoc:
	protoc --go_out=. --go-grpc_out=. app/proto/chat.proto
