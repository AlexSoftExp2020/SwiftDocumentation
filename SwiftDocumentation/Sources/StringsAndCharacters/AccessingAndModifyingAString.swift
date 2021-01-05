//
//  AccessingAndModifyingAString.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 07.11.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - ACCESSING AND MODIFYING A STRING

class AccessingAndModifyingAString: XCTestCase {

    func testStringIndices() {
        
        let greeting = "Guten Tag!"
        greeting[greeting.startIndex]
        // G
        
        greeting[greeting.index(before: greeting.endIndex)]
        // !
        
        greeting[greeting.index(after: greeting.startIndex)]
        // u
        
        let index = greeting.index(greeting.startIndex, offsetBy: 7)
        greeting[index]
        // a
        
        greeting[greeting.endIndex] // Error
        greeting.index(after: greeting.endIndex) // Error
        
        for index in greeting.indices {
            print("\(greeting[index]) ", terminator: "")
        }
        // Prints "G u t e n   T a g ! "
    }
    
    func testInsertingAndRemoving() {
        
        var welcome = "hello"
        welcome.insert("!", at: welcome.endIndex)
        // welcome now equals "hello!"
        
        welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
        // welcome now equals "hello there!"
        
        welcome.remove(at: welcome.index(before: welcome.endIndex))
        // welcome now equals "hello there"
        
        let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
        welcome.removeSubrange(range)
        // welcome now equals "hello"
    }
}
