//
//  ArithmeticOperators.swift
//  BasicOperators
//
//  Created by Oleksii Pidgornyi on 19.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - Arithmetic Operators

class ArithmeticOperators: XCTestCase {

    func test_first() {
        
        1 + 2       // equals 3
        5 - 3       // equals 2
        2 * 3       // equals 6
        10.0 / 2.5  // equals 4.0
        
        
        "hello, " + "world"  // equals "hello, world"
    }
    
    func test_remainderOperator() {
        9 % 4    // equals 1
        -9 % 4   // equals -1
    }
    
    func test_unaryMinusOperator() {
        
        let three = 3
        let minusThree = -three       // minusThree equals -3
        let plusThree = -minusThree   // plusThree equals 3, or "minus minus three"
    }
    
    func test_unaryPlusOperator() {
        let minusSix = -6
        let alsoMinusSix = +minusSix  // alsoMinusSix equals -6
    }
}
