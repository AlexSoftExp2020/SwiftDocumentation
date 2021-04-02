//
//  TypeSubscripts.swift
//  Subscripts
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class TypeSubscripts: XCTestCase {
    
    enum Planet: Int {
        case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
        static subscript(n: Int) -> Planet {
            return Planet(rawValue: n)!
        }
    }

    let mars = Planet[4]

    func testExecution() {
        print(mars)
    }
}



