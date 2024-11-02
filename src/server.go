package main

import (
	"context"
	"crypto/tls"
	"golang.org/x/net/http2"
	"net"
	"net/http"
	"time"
)

// newInsecureClient create a http2 client without tls.
// ref: https://connectrpc.com/docs/go/deployment#h2c
func newInsecureClient() *http.Client {
	return &http.Client{
		Transport: &http2.Transport{
			AllowHTTP: true,
			DialTLSContext: func(ctx context.Context, network, addr string, cfg *tls.Config) (net.Conn, error) {

				// If you're also using this client for non-h2c traffic, you may want
				// to delegate to tls.Dial if the network isn't TCP or the addr isn't
				// in an allowlist.
				return net.Dial(network, addr)
			},
			ReadIdleTimeout: 1 * time.Minute,
			// Don't forget timeouts!
		},
	}
}
