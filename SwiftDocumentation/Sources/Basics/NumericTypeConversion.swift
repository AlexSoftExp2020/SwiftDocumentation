//
//  NumericTypeConversion.swift
//  Basics
//
//  Created by Oleksii Pidgornyi on 16.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - NUMERIC TYPE CONVERSION

class NumericTypeConversion: XCTestCase {
    
    //Numeric Type Conversion
    func test_IntegerConversion() {
        
        //let cannotBeNegative: UInt8 = -1
        // UInt8 cannot store negative numbers, and so this will report an error
        
        //let tooBig: Int8 = Int8.max + 1
        // Int8 cannot store a number larger than its maximum value,
        // and so this will also report an error
        
    }
    
    func test_IntegerAndFloatingPointConversion() {
        
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
        let pi = Double(three) + pointOneFourOneFiveNine
        // pi equals 3.14159, and is inferred to be of type Double
        
        let integerPi = Int(pi)
        // integerPi equals 3, and is inferred to be of type Int
        
    }
}
