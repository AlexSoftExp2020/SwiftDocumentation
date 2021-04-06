//
//  SettingInitialValuesForStoredProperties.swift
//  Deinitialization
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class SettingInitialValuesForStoredProperties: XCTestCase {

}

class Initializers {
    init() {
        // perform some initialization here
    }
    

    struct Fahrenheit {
        var temperature: Double
        init() {
            temperature = 32.0
        }
    }
    
    var f = Fahrenheit()
    
    func testExecution() {
        print("The default temperature is \(f.temperature)° Fahrenheit")
        // Prints "The default temperature is 32.0° Fahrenheit"
    }
}


class DefaultPropertyValues {
    struct Fahrenheit {
        var temperature = 32.0
    }
}

