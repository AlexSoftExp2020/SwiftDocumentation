//
//  UnicodeRepresentationsOfStrings.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 07.11.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - UNICODE REPRESENTING OF STRINGS

class UnicodeRepresentationsOfStrings: XCTestCase {

    func testUTF8Representation() {
        let dogString = "Dog‼🐶"
        
        for codeUnit in dogString.utf8 {
            print("\(codeUnit) ", terminator: "")
        }
        print("")
        // Prints "68 111 103 226 128 188 240 159 144 182 "
        
        for codeUnit in dogString.utf16 {
            print("\(codeUnit) ", terminator: "")
        }
        print("")
        // Prints "68 111 103 8252 55357 56374 "
    }
    
    func testUnicodeScalarRepresentation() {
        
        let dogString = "Dog‼🐶"
        
        for scalar in dogString.unicodeScalars {
            print("\(scalar.value) ", terminator: "")
        }
        print("")
        // Prints "68 111 103 8252 128054 "
        
        for scalar in dogString.unicodeScalars {
            print("\(scalar) ")
        }
        // D
        // o
        // g
        // ‼
        // 🐶
    }
}
