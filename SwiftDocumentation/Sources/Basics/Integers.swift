//
//  Integers.swift
//  Basics
//
//  Created by Oleksii Pidgornyi on 16.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - INTEGER BOUNDS

class Integers: XCTestCase {
    
    let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
    let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
    
    func test_PrintInteger() {
        print(minValue)
        print(maxValue)
    }
}
