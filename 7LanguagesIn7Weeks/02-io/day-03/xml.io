
Builder := Object clone

Builder ident := 0

Builder forward := method(

    tab := ""

    for (i, 1, ident, tab := tab .. "\t")

    Builder ident := Builder ident + 1

    args := call message arguments

    write(tab, "<", call message name)
    if (args first name == "curlyBrackets",
        attrs := doMessage(args first)
        write(attrs map(attr, val, " " .. attr .. "=" .. "\"" .. val .. "\"") join)
        args = call message arguments rest
    )
    writeln(">")
    
    args foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence",
            writeln(tab .. "\t" .. content)
        )
    )
    writeln(tab .. "</" , call message name, ">" )

    Builder ident := Builder ident - 1
)

Builder ul({"a": 1, "b": "arroz"}, li("Io"),li("Lua"),li("JavaScript"))
