//
//  DefaultInitializers.swift
//  Deinitialization
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class DefaultInitializers: XCTestCase {

}

class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem()

class MemberwiseInitializersForStructureTypes {
    
    struct Size {
        var width = 0.0, height = 0.0
    }
    let twoByTwo = Size(width: 2.0, height: 2.0)
    
    let zeroByTwo = Size(height: 2.0)
    
    func testExecution() {
        
        print(zeroByTwo.width, zeroByTwo.height)
        // Prints "0.0 2.0"
        
        let zeroByZero = Size()
        print(zeroByZero.width, zeroByZero.height)
        // Prints "0.0 0.0"
    }
}

