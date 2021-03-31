//
//  ClassesAreReferenceTypes.swift
//  StructuresAndClasses
//
//  Created by Oleksii Pidgornyi on 30.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ClassesAreReferenceTypes: XCTestCase {

    let tenEighty = VideoMode()
    let hd = Resolution(width: 1920, height: 1080)
    
    func testExecution() {
        tenEighty.resolution = hd
        tenEighty.interlaced = true
        tenEighty.name = "1080i"
        tenEighty.frameRate = 25.0
        
        let alsoTenEighty = tenEighty
        alsoTenEighty.frameRate = 30.0

        print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
        // Prints "The frameRate property of tenEighty is now 30.0"
    }
}

class IndentityOperators {
    /*
     Identical to (===)
     Not identical to (!==)
     */
    
    
    func testExecution() {
        let tenEighty = VideoMode()
        let alsoTenEighty = tenEighty
        
        if tenEighty === alsoTenEighty {
        print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
        }
        // Prints "tenEighty and alsoTenEighty refer to the same VideoMode instance."
    }
}
