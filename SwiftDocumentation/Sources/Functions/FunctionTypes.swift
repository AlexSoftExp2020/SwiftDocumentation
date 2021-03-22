//
//  FunctionTypes.swift
//  Functions
//
//  Created by Oleksii Pidgornyi on 04.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class FunctionTypes: XCTestCase {

    func testAddTwoInts(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func testMultiplyTwoInts(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func testPrintHelloWorld() {
        print("hello, world")
    }
}

class UsingFunctionTypes: XCTestCase {
    
    func addTwoInts(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func testExecution() {
        
        var mathFunction: (Int, Int) -> Int = addTwoInts
        
        mathFunction = multiplyTwoInts
        print("Result: \(mathFunction(2, 3))")
        // Prints "Result: 6"
        
        let anotherMathFunction = addTwoInts
        // anotherMathFunction is inferred to be of type (Int, Int) -> Int
        
        print("Result: \(mathFunction(2, 3))")
        // Prints "Result: 5"
    }
}

class FunctionTypesAsParameterTypes: XCTestCase {
    
    func addTwoInts(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func testPrintMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
        print("Result: \(mathFunction(a, b))")
    }
    
    func testExecution() {
        testPrintMathResult(addTwoInts, 3, 5)
        // Prints "Result: 8"
    }
}

class FunctionTypesAsReturnTypes: XCTestCase {
    
    func testStepForward(_ input: Int) -> Int {
        return input + 1
    }
    func testStepBackward(_ input: Int) -> Int {
        return input - 1
    }
    
    func testChooseStepFunction(backward: Bool) -> (Int) -> Int {
        return backward ? testStepBackward : testStepForward
    }
    
    func testExecution() {
        
        var currentValue = 3
        let moveNearerToZero = testChooseStepFunction(backward: currentValue > 0)
        //moveNearerToZero now refers to the testStepBackward() function
        
        
        print("Counting to zero:")
        // Counting to zero:
        
        while currentValue != 0 {
        print("\(currentValue)... ")
        currentValue = moveNearerToZero(currentValue)
        }
        print("zero!")
        // 3...
        // 2...
        // 1...
        // zero!
    }
}
