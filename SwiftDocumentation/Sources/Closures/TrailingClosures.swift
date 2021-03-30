//
//  TrailingClosures.swift
//  Closures
//
//  Created by Oleksii Pidgornyi on 23.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class TrailingClosures: XCTestCase {

    func testSomeFunctionThatTakesAClosure(closure: () -> Void) {
        // function body goes here
    }
   
    func testExecution() {
        // Here's how you call this function without using a trailing closure:
        
        testSomeFunctionThatTakesAClosure(closure: {
        // closure's body goes here
        })
        
        // Here's how you call this function with a trailing closure instead:
        
        testSomeFunctionThatTakesAClosure() {
        // trailing closure's body goes here
        }
        
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        
       var reversedNames = names.sorted() { $0 > $1 }
        
        reversedNames = names.sorted { $0 > $1 }
        
        let digitNames = [
            0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
            5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
        ]
        
        let numbers = [16, 58, 510]
        
        let strings = numbers.map { (number) -> String in
            var number = number
            var output = ""
            repeat {
                output = digitNames[number % 10]! + output
                number /= 10
            } while number > 0
            return output
        }
        // strings is inferred to be of type [String]
        // its value is ["OneSix", "FiveEight", "FiveOneZero"]
    }
}
