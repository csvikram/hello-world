package main

import (
	"net/http"
	"fmt"
)

func main() {


	fmt.Println("this is great")
	http.HandleFunc("/", helloWorld)
	http.ListenAndServe(":80",nil)

}

func helloWorld(w http.ResponseWriter, r *http.Request)  {
	w.Write([]byte("hello world"))
}