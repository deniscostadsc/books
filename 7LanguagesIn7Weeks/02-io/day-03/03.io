#!/usr/bin/env io

//
// Enhance the XML program to handle attributes: if the first
// argument is a map (use the curly brackets syntax), add
// attributes to the XML program. For example:
// book({"author": "Tate"}...) would print <book author="Tate">:
//

OperatorTable addAssignOperator(":", "addKeyValue")

Map addKeyValue := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1)
    )
)

curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
        r doMessage(arg)
    )
    r
)

doFile("xml.io")  # workaround 8(
