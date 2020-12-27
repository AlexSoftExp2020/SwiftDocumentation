//
//  WorkingWithCharacters.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 25.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - WORKING WITH CHARACTERS

class WorkingWithCharacters: XCTestCase {

    func testWorkCharacters() {
        
        for character in "Dog!🐶" {
            print(character)
        }
        // D
        // o
        // g
        // !
        // 🐶
    }
    
    let exclamationMark: Character = "!"
    
    func testConstructingAndPassingArrayOfCharacters() {
        
        let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
        let catString = String(catCharacters)
        print(catString)
        // Prints "Cat!🐱"
    }
}
