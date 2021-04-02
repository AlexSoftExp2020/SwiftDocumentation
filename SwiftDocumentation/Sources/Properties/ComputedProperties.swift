//
//  ComputedProperties.swift
//  Properties
//
//  Created by Oleksii Pidgornyi on 31.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//class ComputedProperties: XCTestCase {
//
//
//}

class ComputedProperties: XCTestCase {
    
    struct Point {
        var x = 0.0, y = 0.0
    }
    
    struct Size {
        var width = 0.0, height = 0.0
    }
    
    struct Rect {
        var origin = Point()
        var size = Size()
        var center: Point {
            get {
                let centerX = origin.x + (size.width / 2)
                let centerY = origin.y + (size.height / 2)
                return Point(x: centerX, y: centerY)
            }
            set(newCenter) {
                origin.x = newCenter.x - (size.width / 2)
                origin.y = newCenter.y - (size.height / 2)
            }
        }
    }
    
    var square = Rect(origin: Point(x: 0.0, y: 0.0),
                      size: Size(width: 10.0, height: 10.0))
    
    func testExecution() {
        
        let initialSquareCenter = square.center
        square.center = Point(x: 15.0, y: 15.0)
        print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
        // Prints "square.origin is now at (10.0, 10.0)"
    }
}


class ShorthandSetterDeclaration: XCTestCase {
    
    struct Point {
        var x = 0.0, y = 0.0
    }
    
    struct Size {
        var width = 0.0, height = 0.0
    }
    
    struct Rect {
        var origin = Point()
        var size = Size()
        var center: Point {
            get {
                let centerX = origin.x + (size.width / 2)
                let centerY = origin.y + (size.height / 2)
                return Point(x: centerX, y: centerY)
            }
            set(newCenter) {
                origin.x = newCenter.x - (size.width / 2)
                origin.y = newCenter.y - (size.height / 2)
            }
        }
    }
    
    struct AlternativeRect {
        var origin = Point()
        var size = Size()
        var center: Point {
            get {
                let centerX = origin.x + (size.width / 2)
                let centerY = origin.y + (size.height / 2)
                return Point(x: centerX, y: centerY)
            }
            set {
                origin.x = newValue.x - (size.width / 2)
                origin.y = newValue.y - (size.height / 2)
            }
        }
    }
}

class ShorthandGetterDeclaration: XCTestCase {
    
    struct Point {
        var x = 0.0, y = 0.0
    }
    
    struct Size {
        var width = 0.0, height = 0.0
    }
    
    struct Rect {
        var origin = Point()
        var size = Size()
        var center: Point {
            get {
                let centerX = origin.x + (size.width / 2)
                let centerY = origin.y + (size.height / 2)
                return Point(x: centerX, y: centerY)
            }
            set(newCenter) {
                origin.x = newCenter.x - (size.width / 2)
                origin.y = newCenter.y - (size.height / 2)
            }
        }
    }
    
    struct CompactRect {
        var origin = Point()
        var size = Size()
        var center: Point {
            get {
                Point(x: origin.x + (size.width / 2),
                      y: origin.y + (size.height / 2))
            }
            set {
                origin.x = newValue.x - (size.width / 2)
                origin.y = newValue.y - (size.height / 2)
            }
        }
    }
}


class ReadOnluComputedProperties: XCTestCase {
    
    struct Cuboid {
        var width = 0.0, height = 0.0, depth = 0.0
        var volume: Double {
            return width * height * depth
        }
    }
    
    let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
    
    func testExecution() {
        print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
        // Prints "the volume of fourByFiveByTwo is 40.0"
    }
}
