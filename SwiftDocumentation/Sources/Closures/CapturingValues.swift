//
//  CapturingValues.swift
//  Closures
//
//  Created by Oleksii Pidgornyi on 23.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class CapturingValues: XCTestCase {

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
        
        incrementByTen()
        // returns a value of 10
        incrementByTen()
        // returns a value of 20
        incrementByTen()
        // returns a value of 30
        
        let incrementBySeven = testMakeIncrementer(forIncrement: 7)
        incrementBySeven()
        // returns a value of 7

        incrementByTen()
        // returns a value of 40
    }
}
