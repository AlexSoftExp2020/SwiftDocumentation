//
//  ProtocolsAsTypes.swift
//  Protocols
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ProtocolsAsTypes: XCTestCase {

    

}

//class ProtocolsAsTypes {
//    class Dice {
//        let sides: Int
//        let generator: RandomNumberGenerator
//        init(sides: Int, generator: RandomNumberGenerator) {
//            self.sides = sides
//            self.generator = generator
//        }
//        func roll() -> Int {
//            return Int(generator.random() * Double(sides)) + 1
//        }
//    }
//    
//    
//    
//    
//    var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
//    for _ in 1...5 {
//    print("Random dice roll is \(d6.roll())")
//    }
//    // Random dice roll is 3
//    // Random dice roll is 5
//    // Random dice roll is 4
//    // Random dice roll is 5
//    // Random dice roll is 4
//}
