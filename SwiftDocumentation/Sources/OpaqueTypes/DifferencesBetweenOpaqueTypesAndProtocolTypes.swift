//
//  DifferencesBetweenOpaqueTypesAndProtocolTypes.swift
//  OpaqueTypes
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class DifferencesBetweenOpaqueTypesAndProtocolTypes: XCTestCase {

    
}

//class DifferencesBetweenOpaqueTypesAndProtocolTypes {
//    func protoFlip<T: Shape>(_ shape: T) -> Shape {
//        return FlippedShape(shape: shape)
//    }
//    
//    
//    
//    
//    
//    func protoFlip<T: Shape>(_ shape: T) -> Shape {
//        if shape is Square {
//            return shape
//        }
//        
//        return FlippedShape(shape: shape)
//    }
//    
//    
//    
//    
//    
//    let protoFlippedTriangle = protoFlip(smallTriangle)
//    let sameThing = protoFlip(smallTriangle)
//    protoFlippedTriangle == sameThing  // Error
//    
//    
//    
//    
//    
//    protocol Container {
//        associatedtype Item
//        var count: Int { get }
//        subscript(i: Int) -> Item { get }
//    }
//    extension Array: Container { }
//    
//    
//    
//    
//    
//    // Error: Protocol with associated types can't be used as a return type.
//    func makeProtocolContainer<T>(item: T) -> Container {
//        return [item]
//    }
//    
//    // Error: Not enough information to infer C.
//    func makeProtocolContainer<T, C: Container>(item: T) -> C {
//        return [item]
//    }
//
//    
//    
//    
//    
//    func makeOpaqueContainer<T>(item: T) -> some Container {
//    return [item]
//    }
//    let opaqueContainer = makeOpaqueContainer(item: 12)
//    let twelve = opaqueContainer[0]
//    print(type(of: twelve))
//    // Prints "Int"
//}
