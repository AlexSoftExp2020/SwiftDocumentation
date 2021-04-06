//
//  Required_Initializers.swift
//  Deinitialization
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class Required_Initializers: XCTestCase {

    

}

class RequiredInitializers {
    class SomeClass {
        required init() {
            // initializer implementation goes here
        }
    }
    
    
    
    
    
    class SomeSubclass: SomeClass {
        required init() {
            // subclass implementation of the required initializer goes here
        }
    }
}
