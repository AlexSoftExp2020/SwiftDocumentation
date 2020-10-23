//
//  RangeOperators.swift
//  BasicOperators
//
//  Created by Oleksii Pidgornyi on 19.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - RANGE OPERATORS

class RangeOperators: XCTestCase {

    func test_ClosedRangeOperator() {
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
    }
    
    func test_HalfOpenRangeOperator() {
        let names = ["Anna", "Alex", "Brian", "Jack"]
        let count = names.count
        for i in 0..<count {
            print("Person \(i + 1) is called \(names[i])")
        }
        // Person 1 is called Anna
        // Person 2 is called Alex
        // Person 3 is called Brian
        // Person 4 is called Jack
    }
    
    func test_OneSidedRanges() {
        let names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names[2...] {
            print(name)
        }
        // Brian
        // Jack
        
        for name in names[...2] {
            print(name)
        }
        // Anna
        // Alex
        // Brian
        
        
        for name in names[..<2] {
            print(name)
        }
        // Anna
        // Alex
        
        
        let range = ...5
        range.contains(7)   // false
        range.contains(4)   // true
        range.contains(-1)  // true
    }
}
