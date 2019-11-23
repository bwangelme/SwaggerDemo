package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, request *http.Request) {
		fmt.Fprintf(w, "Hello, Net\n")
	})

	fs := http.FileServer(http.Dir("./static/swagger-ui/dist"))
	http.Handle("/swagger/", http.StripPrefix("/swagger/", fs))

	err := http.ListenAndServe("localhost:8080", nil)
	if err != nil {
		log.Fatalln(err)
	}

	fmt.Println("Exit")
}
