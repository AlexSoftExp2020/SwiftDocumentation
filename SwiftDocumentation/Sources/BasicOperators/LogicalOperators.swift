//
//  LogicalOperators.swift
//  BasicOperators
//
//  Created by Oleksii Pidgornyi on 19.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - LOGICAL OPERATORS

class LogicalOperators: XCTestCase {

    func test_logicalOperators() {
        
        //        Logical NOT (!a)
        //        Logical AND (a && b)
        //        Logical OR (a || b)
    }
    
    func test_LogicalNotOperator() {
        
        let allowedEntry = false
        if !allowedEntry {
            print("ACCESS DENIED")
        }
        // Prints "ACCESS DENIED"
    }
    
    func test_LogicalAndOperator() {
        
        let enteredDoorCode = true
        let passedRetinaScan = false
        if enteredDoorCode && passedRetinaScan {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        // Prints "ACCESS DENIED"
    }
    
    func test_LogicalOROperator() {
        
        let hasDoorKey = false
        let knowsOverridePassword = true
        if hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        // Prints "Welcome!"
    }
    
    func test_CombiningLogicalOperators() {
        
        let enteredDoorCode = true
        let passedRetinaScan = false
        let hasDoorKey = false
        let knowsOverridePassword = true
        
        if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        // Prints "Welcome!"
    }
    
    func test_ExplicitParantheses() {
        
        let enteredDoorCode = true
        let passedRetinaScan = false
        let hasDoorKey = false
        let knowsOverridePassword = true
        
        if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        // Prints "Welcome!"
    }
}
