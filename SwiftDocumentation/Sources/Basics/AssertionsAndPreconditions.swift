//
//  AssertionsAndPreconditions.swift
//  Basics
//
//  Created by Oleksii Pidgornyi on 18.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - ASSERTIONS AND PRECONDITIONS

class AssertionsAndPreconditions: XCTestCase {
    
    func test_DebuggingWithAssertions() {
        let age = -3
        assert(age >= 0, "A person's age can't be less than zero.")
        // This assertion fails because -3 is not >= 0.
        
        assert(age >= 0)
        
        if age > 10 {
            print("You can ride the roller-coaster or the ferris wheel.")
        } else if age >= 0 {
            print("You can ride the ferris wheel.")
        } else {
            assertionFailure("A person's age can't be less than zero.")
        }
    }
    
    func test_EnforcingPreconditions() {
        let index = -5
        // In the implementation of a subscript...
        precondition(index > 0, "Index must be greater than zero.")
        
    }
}
