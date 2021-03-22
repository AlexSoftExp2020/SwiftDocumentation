//
//  NestedFunctions.swift
//  Functions
//
//  Created by Oleksii Pidgornyi on 04.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class NestedFunctions: XCTestCase {

    func testChooseStepFunction(backward: Bool) -> (Int) -> Int {
        func stepForward(input: Int) -> Int { return input + 1 }
        func stepBackward(input: Int) -> Int { return input - 1 }
        return backward ? stepBackward : stepForward
    }
    
    func testExecution() {
        
        var currentValue = -4
        
        let moveNearerToZero = testChooseStepFunction(backward: currentValue > 0)
        // moveNearerToZero now refers to the nested stepForward() function
        
        while currentValue != 0 {
                print("\(currentValue)... ")
                currentValue = moveNearerToZero(currentValue)
        }
        
        print("zero!")
        // -4...
        // -3...
        // -2...
        // -1...
        // zero!
    }
}
