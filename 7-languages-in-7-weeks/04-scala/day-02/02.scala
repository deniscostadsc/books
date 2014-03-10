
//
// Write a Censor trait with a method that will replace the curse words
// Shoot and Darn with Pucky and Beans alternatives. Use a map to
// store the curse words and their alternatives.
//

def censor(words: List[String]){
    val censored_words = Map("shoot" -> "pucky", "darn" -> "beans")
    val approved = words.foreach(
        word => println(
            word.replace("shoot", censored_words("shoot")).replace("darn", censored_words("darn"))
        )
    )
}

val lyrics = List(
    "I'm", "goin'", "down", "to", "shoot", "my", "old",
    "ladyI'm", "goin'", "down", "to", "shoot", "my",
    "old", "lady"
)

lyrics.foreach(word => println(word))

censor(lyrics)
