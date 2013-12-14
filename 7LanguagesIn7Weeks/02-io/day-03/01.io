#!/usr/bin/env io

//
// Enhance the XML program to add spaces to show the indentation
// structure.
//

Builder := Object clone

Builder ident := 0

Builder forward := method(

    tab := ""

    for (i, 1, ident, tab := tab .. "\t")

    Builder ident := Builder ident + 1

    writeln(tab .. "<" , call message name, ">" )
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence",
            writeln(tab .. "\t" .. content)
        )
    )
    writeln(tab .. "</" , call message name, ">" )

    Builder ident := Builder ident - 1
)

Builder ul(li("Io"),li("Lua"),li("JavaScript"))
