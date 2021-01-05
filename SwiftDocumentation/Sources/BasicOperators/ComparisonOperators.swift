//
//  ComparisonOperators.swift
//  BasicOperators
//
//  Created by Oleksii Pidgornyi on 19.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - Comparison Operators

class ComparisonOperators: XCTestCase {

    func test_first() {
        
        1 == 1   // true because 1 is equal to 1
        2 != 1   // true because 2 is not equal to 1
        2 > 1    // true because 2 is greater than 1
        1 < 2    // true because 1 is less than 2
        1 >= 1   // true because 1 is greater than or equal to 1
        2 <= 1   // false because 2 is not less than or equal to 1
    }
    
    func test_second() {
        
        let name = "world"
        if name == "world" {
            print("hello, world")
        } else {
            print("I'm sorry \(name), but I don't recognize you")
        }
        // Prints "hello, world", because name is indeed equal to "world".
    }
    
    func test_third() {
        
        (1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" are not compared
        (3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
        (4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"
    }
    
    func test_fourth() {
        ("blue", -1) < ("purple", 1)        // OK, evaluates to true
        //("blue", false) < ("purple", true)  // Error because < can't compare Boolean values
    }
}
