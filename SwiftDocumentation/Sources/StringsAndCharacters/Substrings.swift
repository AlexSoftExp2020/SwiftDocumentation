//
//  Substrings.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 07.11.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - SUBSTRINGS

class Substrings: XCTestCase {

    func testSubstrings() {
        
        let greeting = "Hello, world!"
        let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
        let beginning = greeting[..<index]
        // beginning is "Hello"
        
        // Convert the result to a String for long-term storage.
        let newString = String(beginning)
    }
}
