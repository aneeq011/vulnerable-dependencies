package main

import (
    'fmt'
    'net/http'
    'github.com/gin-gonic/gin'
)

func main() {
    r := gin.Default()
    r.GET('/', func(c *gin.Context) {
        c.String(http.StatusOK, 'Hello, world!')
    })
    r.Run() // listen and serve on 0.0.0.0:8080
}
