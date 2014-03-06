
//
// Write a game that will take a tic-tac-toe board with X, O, and blank
// characters and detect the winner or whether there is a tie or no
// winner yet. Use classes where appropriate.
//

// Scala isn't so easy, I got some ideas from this solution to start:
// https://github.com/kikito/7-languages-in-7-weeks/blob/master/4-scala/day-1/day-1.scala

class AssertException(msg: String) extends Exception(msg: String)


def assertThrows[E](f: => Unit)(implicit eType:ClassManifest[E]) {
    try{
        f
    } catch {
        case e: Exception =>
            if ( eType.erasure.isAssignableFrom(e.getClass)) { return }
    }
    throw new AssertException("Expected error of type " + eType.erasure.getName )
}


def assert(condition: Boolean, message: String) {
    if(!condition) { throw new AssertException(message) }
}


def assertNot(condition: Boolean, message: String) {
    assert(!condition, message)
}


class Cell(v: String) {
    val value: String = v

    override def equals (other: Any):Boolean = other match {
        case other: Cell => this.value == other.value
        case _ => false
    }
}


class Line(a: String, b: String, c: String) {
    val cells = List(new Cell(a), new Cell(b), new Cell(c))

    def isWinner(player: String):Boolean = {
        !cells.exists(c => c.value != player)
    }

    def hasSpace():Boolean = {
        cells.exists(c => c.value == " ")
    }
}


class TicTacToeBoard(board: List[List[String]]) {
    var lines = List(
        // horizontal
        new Line(board(0)(0), board(0)(1), board(0)(2)),
        new Line(board(1)(0), board(1)(1), board(1)(2)),
        new Line(board(2)(0), board(2)(1), board(2)(2)),

        // vertical
        new Line(board(0)(0), board(1)(0), board(2)(0)),
        new Line(board(0)(1), board(1)(1), board(2)(1)),
        new Line(board(0)(2), board(1)(2), board(2)(2)),

        // diagonal
        new Line(board(0)(0), board(1)(1), board(2)(2)),
        new Line(board(0)(2), board(1)(1), board(2)(0))
    )

    def isWinner(player: String):Boolean = {
        lines.exists(l => l.isWinner(player))
    }
       
    def isTie():Boolean = {
        !lines.exists(l => l.hasSpace()) && !isWinner("X") && !isWinner("O")
    }

    def isFinished():Boolean = {
        isTie() || isWinner("X") || isWinner("O")
    }
}

// Cell asserts
assert(new Cell("X") == new Cell("X"), "Equal cells should be equal.")
assertNot(new Cell("X") == new Cell("O"), "Different cells should be different.")

// Line asserts
assert(new Line("X", "X", "X").isWinner("X"), "Is winner correct.")
assertNot(new Line("X", "Y", "X").isWinner("X"), "Is winner incorrect.")
assertNot(new Line("X", " ", "X").isWinner("X"), "Is winner incorrect.")

assertNot(new Line("X", "Y", "X").hasSpace(), "Hasn't blank space.")
assert(new Line("X", "Y", " ").hasSpace(), "Has blank space.")

// Board asserts
assert(
    new TicTacToeBoard(List(List("X", "Y", "X"), List("Y", "X", "Y"), List("Y", "X", "Y"))).isTie(),
    "Is tie."
)

assert(
    new TicTacToeBoard(List(List("X", "X", "Y"), List("Y", "X", "X"), List("Y", "X", "Y"))).isWinner("X"),
    "'X' is the winner."
)

assertNot(
    new TicTacToeBoard(List(List("X", "X", "Y"), List("Y", "X", "X"), List("Y", "X", "Y"))).isWinner("Y"),
    "'Y' isn't the winner."
)

assert(
    new TicTacToeBoard(List(List("X", "Y", "Y"), List("Y", "X", "Y"), List("Y", "X", "Y"))).isWinner("Y"),
    "'Y' is the winner."
)

assertNot(
    new TicTacToeBoard(List(List("X", "Y", "Y"), List("Y", "X", "Y"), List("Y", "X", "Y"))).isWinner("X"),
    "'X' isn't the winner."
)

assertNot(
    new TicTacToeBoard(List(List("X", "Y", "Y"), List(" ", " ", " "), List(" ", " ", " "))).isFinished(),
    "The match isn't finished."
)

assert(
    new TicTacToeBoard(List(List("X", "Y", "Y"), List("Y", "X", "Y"), List("Y", "X", "Y"))).isFinished(),
    "The match isn't finished when some player wins."
)
