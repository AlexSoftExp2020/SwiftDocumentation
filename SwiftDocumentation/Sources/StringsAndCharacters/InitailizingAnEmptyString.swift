//
//  InitailizingAnEmptyString.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 25.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - INITIALIZING AN EMPTY STRING

class InitailizingAnEmptyString: XCTestCase {

    var emptyString = ""               // empty string literal
    var anotherEmptyString = String()  // initializer syntax
    // these two strings are both empty, and are equivalent to each other
    
    func testIfStringIsEmpty() {
        if emptyString.isEmpty {
            print("Nothing to see here")
        }
        // Prints "Nothing to see here"
    }
}
