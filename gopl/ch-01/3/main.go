package main

import (
    "fmt"
    "os"
    "strings"
    "time"
)

func main() {
    t0 := time.Now()
    var s, sep string
    for i := 0; i < len(os.Args); i++ {
        s += sep + os.Args[i]
        sep = " "
    }
    fmt.Println(s)
    t1 := time.Now()

    fmt.Printf("The slower code took %v to run.\n", t1.Sub(t0))


    t0 = time.Now()
    fmt.Println(strings.Join(os.Args, " "))
    t1 = time.Now()

    fmt.Printf("The faster code took %v to run.\n", t1.Sub(t0))

}
