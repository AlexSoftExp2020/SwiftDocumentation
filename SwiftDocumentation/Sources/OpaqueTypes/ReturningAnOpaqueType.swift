//
//  ReturningAnOpaqueType.swift
//  OpaqueTypes
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ReturningAnOpaqueType: XCTestCase {

    

}

//class ReturningAnOpaqueType {
//    func max<T>(_ x: T, _ y: T) -> T where T: Comparable { ... }
//    
//    
//    
//    
//    
//    
//    struct Square: Shape {
//        var size: Int
//        func draw() -> String {
//            let line = String(repeating: "*", count: size)
//            let result = Array<String>(repeating: line, count: size)
//            return result.joined(separator: "\n")
//        }
//    }
//    
//    func makeTrapezoid() -> some Shape {
//    let top = Triangle(size: 2)
//    let middle = Square(size: 2)
//    let bottom = FlippedShape(shape: top)
//    let trapezoid = JoinedShape(
//    top: top,
//    bottom: JoinedShape(top: middle, bottom: bottom)
//    )
//    return trapezoid
//    }
//    let trapezoid = makeTrapezoid()
//    print(trapezoid.draw())
//    // *
//    // **
//    // **
//    // **
//    // **
//    // *
//    
//    
//    
//    
//    
//    
//    func flip<T: Shape>(_ shape: T) -> some Shape {
//    return FlippedShape(shape: shape)
//    }
//    func join<T: Shape, U: Shape>(_ top: T, _ bottom: U) -> some Shape {
//    JoinedShape(top: top, bottom: bottom)
//    }
//    
//    let opaqueJoinedTriangles = join(smallTriangle, flip(smallTriangle))
//    print(opaqueJoinedTriangles.draw())
//    // *
//    // **
//    // ***
//    // ***
//    // **
//    // *
//
//    
//    
//    
//    
//    
//    func invalidFlip<T: Shape>(_ shape: T) -> some Shape {
//    if shape is Square {
//    return shape // Error: return types don't match
//    }
//    return FlippedShape(shape: shape) // Error: return types don't match
//    }
//    
//    
//    
//    
//    
//    struct FlippedShape<T: Shape>: Shape {
//        var shape: T
//        func draw() -> String {
//            if shape is Square {
//                return shape.draw()
//            }
//            let lines = shape.draw().split(separator: "\n")
//            return lines.reversed().joined(separator: "\n")
//        }
//    }
//    
//    
//    
//    
//    
//    func `repeat`<T: Shape>(shape: T, count: Int) -> some Collection {
//    return Array<T>(repeating: shape, count: count)
//    }
//
//}
