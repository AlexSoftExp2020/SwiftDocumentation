//
//  SubscriptSyntax.swift
//  Subscripts
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class SubscriptSyntax: XCTestCase {

    

}

class Example {
    
    subscript(index: Int) -> Int {
        get {
            // Return an appropriate subscript value here.
        }
        set(newValue) {
            // Perform a suitable setting action here.
        }
    }
    
// Another example
//    subscript(index: Int) -> Int {
//        // Return an appropriate subscript value here.
//    }
}

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)

func testExecution() {
    print("six times three is \(threeTimesTable[6])")
    // Prints "six times three is 18"
}

