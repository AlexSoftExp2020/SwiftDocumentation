//
//  SubscriptUsage.swift
//  Subscripts
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//class SubscriptUsage: XCTestCase {
//
//    
//}

class SubscriptUsage: XCTestCase {
    
    var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
    
    func testExecution() {
        numberOfLegs["bird"] = 2
    }
}
