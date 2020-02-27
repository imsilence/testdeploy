package main

import (
	"fmt"
	"time"

	"github.com/astaxie/beego/context"

	"github.com/astaxie/beego"
)

func main() {
	beego.Get("/", func(ctx *context.Context) {
		ctx.WriteString(fmt.Sprintf("v3:time: %s", time.Now().Format("2006-01-02 15:04:05")))
	})

	beego.Run()
}
