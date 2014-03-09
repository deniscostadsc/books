
//
// Use foldLeft to compute the total size of a list of strings.
//

var list = List(1, 2, 3, 4, "hi")

println(list.foldLeft(0)((n, _) => n + 1))
