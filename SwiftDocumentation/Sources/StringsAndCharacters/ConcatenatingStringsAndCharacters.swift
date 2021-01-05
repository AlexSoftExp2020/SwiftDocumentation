//
//  ConcatenatingStringsAndCharacters.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 07.11.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - CONCATENATING STRINGS AND CHARACTERS

class ConcatenatingStringsAndCharacters: XCTestCase {

            func testConcatString() {
                
                let string1 = "hello"
                let string2 = " there"
                var welcome = string1 + string2
                // welcome now equals "hello there"
                
                
                var instruction = "look over"
                instruction += string2
                // instruction now equals "look over there"
                
                let exclamationMark: Character = "!"
                welcome.append(exclamationMark)
                // welcome now equals "hello there!"
                
                
                let badStart = """
    one
    two
    """
                let end = """
    three
    """
                print(badStart + end)
                // Prints two lines:
                // one
                // twothree
                
                let goodStart = """
    one
    two

    """
                print(goodStart + end)
                // Prints three lines:
                // one
                // two
                // three
            }
}
