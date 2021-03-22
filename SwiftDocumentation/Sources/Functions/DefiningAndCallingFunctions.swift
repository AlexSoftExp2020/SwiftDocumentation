//
//  DefiningAndCallingFunctions.swift
//  Functions
//
//  Created by Oleksii Pidgornyi on 04.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class DefiningAndCallingFunctions: XCTestCase {

    func testGreet(person: String) -> String {
        let greeting = "Hello, " + person + "!"
        return greeting
    }
    
    
    
    //print(testGreet(person: "Anna"))
    // Prints "Hello, Anna!"
    //print(testGreet(person: "Brian"))
    // Prints "Hello, Brian!"
    
    
    
    
    func greetAgain(person: String) -> String {
        return "Hello again, " + person + "!"
    }
    //print(greetAgain(person: "Anna"))
    // Prints "Hello again, Anna!"

}
