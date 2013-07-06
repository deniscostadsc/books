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
    for (y, 0, self table size - 1,
        for(x, 0, self table at(0) size -1,
            newTable set(y, x, self get(x, y))
        )
    )
    newTable
)

// Tests

myTable := Table clone

myTable dim(2, 2)

myTable set(0, 0, 6)
myTable set(1, 1, 4)
myTable set(0, 1, 2)
myTable set(1, 0, 1)

newTable := myTable transpose

if (myTable get(0, 0) == newTable get(0, 0), writeln("passed"), writeln("failed"))
if (myTable get(0, 1) == newTable get(1, 0), writeln("passed"), writeln("failed"))
if (myTable get(1, 0) == newTable get(0, 1), writeln("passed"), writeln("failed"))
if (myTable get(1, 1) == newTable get(1, 1), writeln("passed"), writeln("failed"))
