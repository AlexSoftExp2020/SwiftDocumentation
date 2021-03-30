//
//  EnumerationSyntax.swift
//  Enumeration
//
//  Created by Oleksii Pidgornyi on 30.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class EnumerationSyntax: XCTestCase {

    enum SomeEnumeration {
        // enumeration definition goes here
    }
    
    enum CompassPoint {
        case north
        case south
        case east
        case west
    }
    
    enum Planet {
        case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    }
    
    var directionToHead = CompassPoint.west
    
    func testExecution() {
        directionToHead = .east
    }
}
