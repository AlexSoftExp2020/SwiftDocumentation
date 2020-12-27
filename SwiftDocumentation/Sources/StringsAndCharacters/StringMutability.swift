//
//  StringMutability.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 25.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - STRING MUTABILITY

class StringMutability: XCTestCase {

    func testStringMut() {
        var variableString = "Horse"
        variableString += " and carriage"
        // variableString is now "Horse and carriage"
        
        //let constantString = "Highlander"
        //constantString += " and another Highlander"
        // this reports a compile-time error - a constant string cannot be modified
    }
}
