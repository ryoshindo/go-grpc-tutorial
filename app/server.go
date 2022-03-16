package main

import (
	"context"
	"log"

	"github.com/ryoshindo/go-grpc-tutorial/app/chat"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func main() {
	conn, err := grpc.Dial(":9080", grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		log.Fatalln(err)
	}
	defer conn.Close()

	c := chat.NewChatServiceClient(conn)
	resp, err := c.SayHello(context.Background(), &chat.Message{Body: "hello from client!"})
	if err != nil {
		log.Fatalln("wassyoi", err)
	}

	log.Printf("response from server: %s", resp.Body)
}
