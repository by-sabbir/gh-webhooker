package main

import (
	"os"

	"github.com/by-sabbir/gh-webhooker/webhook"
)

func main() {
	if err := webhook.NewCmdForward().Execute(); err != nil {
		os.Exit(1)
	}
}
