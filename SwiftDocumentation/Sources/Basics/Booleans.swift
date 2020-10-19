//
//  Booleans.swift
//  Basics
//
//  Created by Oleksii Pidgornyi on 16.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - BOOLEANS

class Booleans: XCTestCase {
    
    let orangesAreOrange = true
    let turnipsAreDelicious = false
    
    func test_checkBooleans() {
        if turnipsAreDelicious {
            print("Mmm, tasty turnips!")
        } else {
            print("Eww, turnips are horrible.")
            // Prints "Eww, turnips are horrible."
        }
        
    }
    
    func test_booleanExample1() {
        //        let i = 1
        //        if i {
        //            // this example will not compile, and will report an error
        //        }
    }
    
    func test_booleanExample2() {
        let i = 1
        if i == 1 {
            // this example will compile successfully
        }
    }
}
