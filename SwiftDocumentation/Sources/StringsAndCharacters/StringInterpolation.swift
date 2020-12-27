//
//  StringInterpolation.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 07.11.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - STRING INTERPOLATION

class StringInterpolation: XCTestCase {

    func testStringInterpolation() {
            
            let multiplier = 3
            let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
            // message is "3 times 2.5 is 7.5"
            
            
    //        print(#"Write an interpolated string in Swift using \(multiplier)."#)
    //        // Prints "Write an interpolated string in Swift using \(multiplier)."
    //
    //
    //        print(#"6 times 7 is \#(6 * 7)."#)
    //        // Prints "6 times 7 is 42."
        }
}
