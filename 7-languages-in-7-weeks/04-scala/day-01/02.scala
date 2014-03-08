
//
// Bonus problem: Let two players play tic-tac-toe.
//

import scala.collection.mutable.LinkedList

class Invalid(msg: String) extends Exception(msg: String)

class TicTacToeBoard(b: LinkedList[LinkedList[String]]) {
    var board = b

    def isWinner(player: String):Boolean = {
        var won = false
        for(i <- 0 to 2) {
            if (board(i)(0) == player && board(i)(0) == board(i)(1) && board(i)(1) == board(i)(2)){
                won = true
            }

            if (board(0)(i) == player && board(0)(i) == board(1)(i) && board(1)(i) == board(2)(i)){
                won = true
            }
        }

        if (board(0)(0) == player && board(0)(0) == board(1)(1) && board(1)(1) == board(2)(2)){
            won = true
        }

        if (board(0)(2) == player && board(0)(2) == board(1)(1) && board(1)(1) == board(2)(0)){
            won = true
        }

        won
    }

    def hasSpace():Boolean = {
        var space = false
        for(i <- 0 to 2) {
            for(j <- 0 to 2) {
                if (board(i)(j) == " ")
                    space = true
            }
        }
        space
    }

    def isTie():Boolean = {
        !hasSpace() && !isWinner("X") && !isWinner("O")
    }

    def isFinished():Boolean = {
        isTie() || isWinner("X") || isWinner("O")
    }

    def setCell(x: Int, y: Int, value: String) {
        if (board(x)(y) == " ") {
            board(x)(y) = value
        } else {
            throw new Invalid("You can't mark here, man!")
        }
    }

    def printBoard() {
        println("-------------")
        for(i <- 0 to 2) {
            print("| ")
            for(j <- 0 to 2) {
                print(board(i)(j))
                print(" | ")
            }
            println("\n-------------")
        }
    }
}


class Game() {
    val board = new TicTacToeBoard(
        LinkedList(LinkedList(" ", " ", " "), LinkedList(" ", " ", " "), LinkedList(" ", " ", " "))
    )

    var value = "X"

    def play(x: Int, y: Int) {
        try {
            board.setCell(x, y, value)
            value = if (value == "X") "O" else "X"
        } catch {
            case e: Exception => println("This cell is not empty!")
        }
    }

    def isGameOver(): Boolean = {
        board.isFinished()
    }

    def printBoard(){
        board.printBoard()
    }
}

var game = new Game()
var x = ""
var y = ""

while (!game.isGameOver()){
    game.printBoard()

    print("Line: ")
    x = readLine()
    print("\nColumn: ")
    y = readLine()
    println("")

    game.play(x.toInt, y.toInt)
}

game.printBoard()

println("Game Over!!!")
