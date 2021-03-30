//
//  ClosuresAreReferenceTypes.swift
//  Closures
//
//  Created by Oleksii Pidgornyi on 23.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ClosuresAreReferenceTypes: XCTestCase {

    func testMakeIncrementer(forIncrement amount: Int) -> () -> Int {
        
        var runningTotal = 0
        
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementer
    }
    
    func testExecution() {
        
        let incrementByTen = testMakeIncrementer(forIncrement: 10)
        
        let alsoIncrementByTen = incrementByTen
        alsoIncrementByTen()
        // returns a value of 50
        
        incrementByTen()
        // returns a value of 60
    }
}
