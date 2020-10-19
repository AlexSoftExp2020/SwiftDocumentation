//
//  Optinals.swift
//  Basics
//
//  Created by Oleksii Pidgornyi on 18.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - OPTIONALS

class Optinals: XCTestCase {
        
    // Declaration of optionals:
    
    // let shortForm: Int? = Int("42")
    // let longForm: Optional<Int> = Int("42")
    
    // let number: Int? = Optional.some(42)
    // let noNumber: Int? = Optional.none
    // print(noNumber == nil)
    // Prints "true"
    
    
    func test_firstOptinalsFunction() {
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        // convertedNumber is inferred to be of type "Int?", or "optional Int"
    }
    
    
    //NIL
    func test_nilFunction() {
        
        var serverResponseCode: Int? = 404
        // serverResponseCode contains an actual Int value of 404
        serverResponseCode = nil
        // serverResponseCode now contains no value
        
        
        var surveyAnswer: String?
        // surveyAnswer is automatically set to nil
    }
}

//MARK: - IF STATEMENTS AND FORCED UNWRAPPING

class IfStatementsAndForcedUnwrapping: XCTestCase{
    
    func test_firstIfStatement() {
        
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        
        if convertedNumber != nil {
            print("convertedNumber contains some integer value.")
        }
        // Prints "convertedNumber contains some integer value."
        
        if convertedNumber != nil {
            print("convertedNumber has an integer value of \(convertedNumber!).")
        }
        // Prints "convertedNumber has an integer value of 123."
    }
}

//MARK: - OPTINAL BINDING

class OptinalBinding: XCTestCase {
    
    func test_firstOptinalBindingFunction() {
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        
        if let actualNumber = Int(possibleNumber) {
            print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
        } else {
            print("The string \"\(possibleNumber)\" could not be converted to an integer")
        }
        // Prints "The string "123" has an integer value of 123"
        
        
        if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
        // Prints "4 < 42 < 100"
        
        if let firstNumber = Int("4") {
            if let secondNumber = Int("42") {
                if firstNumber < secondNumber && secondNumber < 100 {
                    print("\(firstNumber) < \(secondNumber) < 100")
                }
            }
        }
    }
    // Prints "4 < 42 < 100"
}

//MARK: - IMPLICITLY UNWRAPPED OPTINALS

class ImplicitlyUnwrappedOptinals: XCTestCase {
    
    func test_firstImplicitlyUnwrappedOptinalsFunction() {
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // requires an exclamation mark
        
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // no need for an exclamation mark
        
        if assumedString != nil {
            print(assumedString!)
        }
        // Prints "An implicitly unwrapped optional string."
        
        if let definiteString = assumedString {
            print(definiteString)
        }
        // Prints "An implicitly unwrapped optional string."
    }
}

