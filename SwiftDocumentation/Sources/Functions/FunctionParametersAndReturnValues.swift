//
//  FunctionParametersAndReturnValues.swift
//  Functions
//
//  Created by Oleksii Pidgornyi on 04.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class FunctionParametersAndReturnValues: XCTestCase {

    func testSayHelloWorld() -> String {
        return "hello, world"
    }
    //print(sayHelloWorld())
    // Prints "hello, world"
}

class FunctionsWithMultipleParameters: XCTestCase {
    
    func greetAgain(person: String) -> String {
        return "Hello again, " + person + "!"
    }
    
    func greet(person: String) -> String {
        let greeting = "Hello, " + person + "!"
        return greeting
    }
    
    func testGreet(person: String, alreadyGreeted: Bool) -> String {
        if alreadyGreeted {
            return greetAgain(person: person)
        } else {
            return greet(person: person)
        }
    }
    //print(testGreet(person: "Tim", alreadyGreeted: true))
    // Prints "Hello again, Tim!"
}

class FunctionsWithoutReturnValues: XCTestCase {
    
    func testGreet(person: String) {
        print("Hello, \(person)!")
    }
    //testGreet(person: "Dave")
    // Prints "Hello, Dave!"
}

class FunctionsWithMultipleReturnValues: XCTestCase {
    
    func testMinMax(array: [Int]) -> (min: Int, max: Int) {
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
}

class OptinalTupleReturnTypes: XCTestCase {
    
    func testMinMax(array: [Int]) -> (min: Int, max: Int)? {
        if array.isEmpty { return nil }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
        
        if let bounds = testMinMax(array: [8, -6, 2, 109, 3, 71]) {
            print("min is \(bounds.min) and max is \(bounds.max)")
        }
        // Prints "min is -6 and max is 109"
    }
}

class FunctionsWithAnImplicitReturn: XCTestCase {
    
    func testGreeting(for person: String) -> String {
        "Hello, " + person + "!"
    }
    //print(testGreeting(for: "Dave"))
    // Prints "Hello, Dave!"
    
    func testAnotherGreeting(for person: String) -> String {
        return "Hello, " + person + "!"
    }
    //print(testAnotherGreeting(for: "Dave"))
    // Prints "Hello, Dave!"
}
