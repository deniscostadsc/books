
//
// Write a Censor trait with a method that will replace the curse words
// Shoot and Darn with Pucky and Beans alternatives. Use a map to
// store the curse words and their alternatives.
//

def censor(sentence: String): String = {
    val censoredTuples = Map("shoot" -> "pucky", "darn" -> "beans")
    val safeSentence = censoredTuples.foldLeft(sentence)(
        (editingSentence, censoredTuple) => editingSentence.replace(censoredTuple._1, censoredTuple._2)
    )
    safeSentence
}

val lyrics = "I'm goin' down to shoot my old lady"

println(lyrics)
println(censor(lyrics))
