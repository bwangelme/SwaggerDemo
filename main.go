package main

import (
	"github.com/bwangelme/SwaggerDemo/api"
	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"

	_ "github.com/bwangelme/SwaggerDemo/docs"
)

func SwaggerSpecHandler(ctx echo.Context) error {
	return ctx.File("./swagger.yaml")
}

func main() {
	e := echo.New()

	e.Use(middleware.Logger())
	e.Use(middleware.Recover())
	e.Use(middleware.CORS())

	// TODO: 分接口认证，不要全局认证
	//e.Use(middleware.BasicAuthWithConfig(middleware.BasicAuthConfig{
	//	Validator: func(username, password string, context echo.Context) (b bool, e error) {
	//		if username == "foo" && password == "bar" {
	//			return true, nil
	//		}
	//		return false, nil
	//	},
	//}))

	e.POST("/foobar", api.FooBarHandler)
	e.GET("/swagger", SwaggerSpecHandler)

	e.Logger.Fatal(e.Start(":8080"))
}
