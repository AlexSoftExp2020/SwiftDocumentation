//
//  Delegation.swift
//  Protocols
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class Delegation: XCTestCase {

    

}

//class Delegation {
//    protocol DiceGame {
//        var dice: Dice { get }
//        func play()
//    }
//    protocol DiceGameDelegate: AnyObject {
//        func gameDidStart(_ game: DiceGame)
//        func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
//        func gameDidEnd(_ game: DiceGame)
//    }
//    
//    
//    
//    
//    class SnakesAndLadders: DiceGame {
//        let finalSquare = 25
//        let dice = Dice(sides: 6, generator: LinearCongruentialGenerator())
//        var square = 0
//        var board: [Int]
//        init() {
//            board = Array(repeating: 0, count: finalSquare + 1)
//            board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//            board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
//        }
//        weak var delegate: DiceGameDelegate?
//        func play() {
//            square = 0
//            delegate?.gameDidStart(self)
//            gameLoop: while square != finalSquare {
//                let diceRoll = dice.roll()
//                delegate?.game(self, didStartNewTurnWithDiceRoll: diceRoll)
//                switch square + diceRoll {
//                case finalSquare:
//                    break gameLoop
//                case let newSquare where newSquare > finalSquare:
//                    continue gameLoop
//                default:
//                    square += diceRoll
//                    square += board[square]
//                }
//            }
//            delegate?.gameDidEnd(self)
//        }
//    }
//    
//    
//    
//    
//    
//    class DiceGameTracker: DiceGameDelegate {
//        var numberOfTurns = 0
//        func gameDidStart(_ game: DiceGame) {
//            numberOfTurns = 0
//            if game is SnakesAndLadders {
//                print("Started a new game of Snakes and Ladders")
//            }
//            print("The game is using a \(game.dice.sides)-sided dice")
//        }
//        func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int) {
//            numberOfTurns += 1
//            print("Rolled a \(diceRoll)")
//        }
//        func gameDidEnd(_ game: DiceGame) {
//            print("The game lasted for \(numberOfTurns) turns")
//        }
//    }
//    
//    
//    
//    
//    
//    let tracker = DiceGameTracker()
//    let game = SnakesAndLadders()
//    game.delegate = tracker
//    game.play()
//    // Started a new game of Snakes and Ladders
//    // The game is using a 6-sided dice
//    // Rolled a 3
//    // Rolled a 5
//    // Rolled a 4
//    // Rolled a 5
//    // The game lasted for 4 turns
//}
