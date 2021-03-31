//
//  ComparingStructuresAndClasses.swift
//  StructuresAndClasses
//
//  Created by Oleksii Pidgornyi on 30.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ComparingStructuresAndClasses: XCTestCase {

}

struct SomeStructure {
    // structure definition goes here
}

class SomeClass {
    // class definition goes here
}

struct Resolution  {
        var width = 0
        var height = 0
    }

class VideoMode  {
        var resolution = Resolution()
        var interlaced = false
        var frameRate = 0.0
        var name: String?
}

class StructureAndClassInstances {
        let someResolution = Resolution()
        let someVideoMode = VideoMode()
}

class AccessingProperties: XCTestCase {
    
    let someResolution = Resolution()
    let someVideoMode = VideoMode()
    
    func testExecution() {
        print("The width of someResolution is \(someResolution.width)")
        // Prints "The width of someResolution is 0"
        
        print("The width of someVideoMode is \(someVideoMode.resolution.width)")
        // Prints "The width of someVideoMode is 0"
        
        someVideoMode.resolution.width = 1280
        print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
        // Prints "The width of someVideoMode is now 1280"
    }
}

class MemberwiseInitializersForStructureTypes: XCTestCase {
        let vga = Resolution(width: 640, height: 480)
}
