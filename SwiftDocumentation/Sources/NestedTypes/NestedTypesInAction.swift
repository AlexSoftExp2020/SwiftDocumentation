//
//  NestedTypesInAction.swift
//  NestedTypes
//
//  Created by Oleksii Pidgornyi on 07.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//class NestedTypesInAction: XCTestCase {
//
//
//
//}

class NestedTypesInAction {
    
    struct BlackjackCard {
        
        // nested Suit enumeration
        enum Suit: Character {
            case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
        }
        
        // nested Rank enumeration
        enum Rank: Int {
            case two = 2, three, four, five, six, seven, eight, nine, ten
            case jack, queen, king, ace
            struct Values {
                let first: Int, second: Int?
            }
            var values: Values {
                switch self {
                case .ace:
                    return Values(first: 1, second: 11)
                case .jack, .queen, .king:
                    return Values(first: 10, second: nil)
                default:
                    return Values(first: self.rawValue, second: nil)
                }
            }
        }
        
        // BlackjackCard properties and methods
        let rank: Rank, suit: Suit
        var description: String {
            var output = "suit is \(suit.rawValue),"
            output += " value is \(rank.values.first)"
            if let second = rank.values.second {
                output += " or \(second)"
            }
            return output
        }
    }
    
    
    
    
    let theAceOfSpades = BlackjackCard(rank: .ace, suit: .spades)
    
    func testExecution() {
        print("theAceOfSpades: \(theAceOfSpades.description)")
        // Prints "theAceOfSpades: suit is ♠, value is 1 or 11"
    }
}
