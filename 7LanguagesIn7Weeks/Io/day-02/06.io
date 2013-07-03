#!/usr/bin/env io

//
// Bonus: Write a transpose method so that (new_matrix get(y, x)) ==
// matrix get(x, y) on the original list.
//

Table := Object clone

Table table := list()

Table dim := method(x, y,

    while (self table size < y,
        self table push(list())

        while (self table at(self table size - 1) size < x,
            self table at(self table size - 1) push(nil)
        )
    )
)

Table set := method(x, y, value,
    self table at(y) atInsert(x, value)
    self table at(y) removeAt(x + 1)
)

Table get := method(x, y,
    self table at(y) at(x)
)

Table transpose := method(
    newTable := self clone
    //writeln(newTable table)
    for (y, 0, self table size - 1,
        x := self table at(0) size - 1
        while (x >= 0,
            if (x == y,
                break
            )
            aux := table at(y) at(x)
            newTable table at(y) atInsert(x, self table at(x) at(y))
            newTable table at(y) removeAt(x + 1)

            newTable table at(x) atInsert(y, aux)
            newTable table at(x) removeAt(y + 1)
            //writeln(newTable table)
            x = x - 1
        )
    )
    newTable
)

myTable := Table clone

myTable dim(2, 2)

myTable set(0, 0, 6)
myTable set(1, 1, 4)
myTable set(0, 1, 2)
myTable set(1, 0, 1)

//myTable table println

newTable := myTable transpose

newTable table println
newTable get(0, 1) println
il
(myTable get(0, 0) .. " " .. newTable get(0, 0)) println
(myTable get(0, 1) .. " " .. newTable get(1, 0)) println
(myTable get(1, 0) .. " " .. newTable get(0, 1)) println
(myTable get(1, 1) .. " " .. newTable get(1, 1)) println

if (myTable get(0, 0) == newTable get(0, 0), writeln("passed"), writeln("failed"))
if (myTable get(0, 1) == newTable get(1, 0), writeln("passed"), writeln("failed"))
if (myTable get(1, 0) == newTable get(0, 1), writeln("passed"), writeln("failed"))
if (myTable get(1, 1) == newTable get(1, 1), writeln("passed"), writeln("failed"))
