package main

import (
	"connectrpc.com/connect"
	"context"
	v1 "hydra/generated/servers/manga/v1"
	"hydra/generated/servers/manga/v1/v1connect"
	"log"
	"net/http"
)

func test() {
	client := v1connect.NewMangaServiceClient(
		http.DefaultClient,
		"http://localhost:55001",
	)
	res, err := client.SearchPlugin(
		context.Background(),
		connect.NewRequest(&v1.SearchPluginRequest{PluginID: "Jane", SearchQuery: "asdasd"}),
	)
	if err != nil {
		log.Println(err)
		return
	}
	log.Println(res.Msg.GetPong())
}
