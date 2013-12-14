#!/usr/bin/env io

//
// Create a list syntax that uses brackets.
//

curlyBrackets := method(
    l := list()
    call message arguments foreach(arg,
        l push(arg)
    )
    l
)

l := {1, 2, 3}

writeln(l)