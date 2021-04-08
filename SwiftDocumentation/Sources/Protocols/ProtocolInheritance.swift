//
//  ProtocolInheritance.swift
//  Protocols
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ProtocolInheritance: XCTestCase {

    

}

//class ProtocolInheritance {
//    
//    protocol InheritingProtocol: SomeProtocol, AnotherProtocol {
//        // protocol definition goes here
//    }
//    
//    
//    
//    
//    protocol PrettyTextRepresentable: TextRepresentable {
//        var prettyTextualDescription: String { get }
//    }
//    
//    
//    
//    
//    
//    extension SnakesAndLadders: PrettyTextRepresentable {
//        var prettyTextualDescription: String {
//            var output = textualDescription + ":\n"
//            for index in 1...finalSquare {
//                switch board[index] {
//                case let ladder where ladder > 0:
//                    output += "▲ "
//                case let snake where snake < 0:
//                    output += "▼ "
//                default:
//                    output += "○ "
//                }
//            }
//            return output
//        }
//    }
//    
//    
//    
//    
//    print(game.prettyTextualDescription)
//    // A game of Snakes and Ladders with 25 squares:
//    // ○ ○ ▲ ○ ○ ▲ ○ ○ ▲ ▲ ○ ○ ○ ▼ ○ ○ ○ ○ ▼ ○ ○ ▼ ○ ▼ ○
//}
