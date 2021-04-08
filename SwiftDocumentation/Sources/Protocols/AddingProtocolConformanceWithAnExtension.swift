//
//  AddingProtocolConformanceWithAnExtension.swift
//  Protocols
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class AddingProtocolConformanceWithAnExtension: XCTestCase {

    

}

//class AddingProtocolConformanceWithAnExtension {
//    
//    protocol TextRepresentable {
//        var textualDescription: String { get }
//    }
//    
//    
//    
//    
//    extension Dice: TextRepresentable {
//        var textualDescription: String {
//            return "A \(sides)-sided dice"
//        }
//    }
//    
//    
//    
//    
//    
//    let d12 = Dice(sides: 12, generator: LinearCongruentialGenerator())
//    print(d12.textualDescription)
//    // Prints "A 12-sided dice"
//    
//    
//    
//    
//    
//    extension SnakesAndLadders: TextRepresentable {
//        var textualDescription: String {
//            return "A game of Snakes and Ladders with \(finalSquare) squares"
//        }
//    }
//    print(game.textualDescription)
//    // Prints "A game of Snakes and Ladders with 25 squares"
//}
//
//class ConditionallyConformingToAProtocol {
//    
//    extension Array: TextRepresentable where Element: TextRepresentable {
//        var textualDescription: String {
//            let itemsAsText = self.map { $0.textualDescription }
//            return "[" + itemsAsText.joined(separator: ", ") + "]"
//        }
//    }
//    let myDice = [d6, d12]
//    print(myDice.textualDescription)
//    // Prints "[A 6-sided dice, A 12-sided dice]"
//    
//}
//
//
//class DeclaringProtocolAdoptionWithAnExtension {
//    struct Hamster {
//        var name: String
//        var textualDescription: String {
//            return "A hamster named \(name)"
//        }
//    }
//    extension Hamster: TextRepresentable {}
//    
//    
//    
//    
//    let simonTheHamster = Hamster(name: "Simon")
//    let somethingTextRepresentable: TextRepresentable = simonTheHamster
//    print(somethingTextRepresentable.textualDescription)
//    // Prints "A hamster named Simon"
//}
