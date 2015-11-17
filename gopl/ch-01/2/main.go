package main

import (
    "fmt"
    "os"
)

func main() {
    for index, element := range os.Args[0:] {
        fmt.Println(index, element)
    }
}
