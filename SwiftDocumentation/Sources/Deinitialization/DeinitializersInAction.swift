//
//  DeinitializersInAction.swift
//  Deinitialization
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//class DeinitializersInAction: XCTestCase {
//
//
//}

class DeinitializersInAction {
    class Bank {
        static var coinsInBank = 10_000
        static func distribute(coins numberOfCoinsRequested: Int) -> Int {
            let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
            coinsInBank -= numberOfCoinsToVend
            return numberOfCoinsToVend
        }
        static func receive(coins: Int) {
            coinsInBank += coins
        }
    }
    
    
    class Player {
        var coinsInPurse: Int
        init(coins: Int) {
            coinsInPurse = Bank.distribute(coins: coins)
        }
        func win(coins: Int) {
            coinsInPurse += Bank.distribute(coins: coins)
        }
        deinit {
            Bank.receive(coins: coinsInPurse)
        }
    }
    
    
    var playerOne: Player? = Player(coins: 100)
    
    func testExecution() {
        print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
        // Prints "A new player has joined the game with 100 coins"
        print("There are now \(Bank.coinsInBank) coins left in the bank")
        // Prints "There are now 9900 coins left in the bank"
    }
    
    
    func testExecution1() {
        playerOne!.win(coins: 2_000)
        
        print("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
        // Prints "PlayerOne won 2000 coins & now has 2100 coins"
        print("The bank now only has \(Bank.coinsInBank) coins left")
        // Prints "The bank now only has 7900 coins left"
    }
    
    func testExecution2() {
        playerOne = nil
        
        print("PlayerOne has left the game")
        // Prints "PlayerOne has left the game"
        print("The bank now has \(Bank.coinsInBank) coins")
        // Prints "The bank now has 10000 coins"
    }
}
