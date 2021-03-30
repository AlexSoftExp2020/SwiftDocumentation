//
//  IteratingOverEnumerationCases.swift
//  Enumeration
//
//  Created by Oleksii Pidgornyi on 30.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class IteratingOverEnumerationCases: XCTestCase {

    enum Beverage: CaseIterable {
        case coffee, tea, juice
    }
    
    let numberOfChoices = Beverage.allCases.count
    
    func testExecution() {
        print("\(numberOfChoices) beverages available")
        // Prints "3 beverages available"
        
        for beverage in Beverage.allCases {
        print(beverage)
        }
        // coffee
        // tea
        // juice
    }
}
