//
//  CheckingForProtocolConformance.swift
//  Protocols
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class CheckingForProtocolConformance: XCTestCase {

    

}

//class CheckingForProtocolConformance {
//    protocol HasArea {
//        var area: Double { get }
//    }
//    
//    
//    
//    
//    class Circle: HasArea {
//        let pi = 3.1415927
//        var radius: Double
//        var area: Double { return pi * radius * radius }
//        init(radius: Double) { self.radius = radius }
//    }
//    class Country: HasArea {
//        var area: Double
//        init(area: Double) { self.area = area }
//    }
//    
//    
//    
//    
//    
//    class Animal {
//        var legs: Int
//        init(legs: Int) { self.legs = legs }
//    }
//    
//    
//    
//    
//    
//    let objects: [AnyObject] = [
//        Circle(radius: 2.0),
//        Country(area: 243_610),
//        Animal(legs: 4)
//    ]
//    
//    
//    
//    
//    
//    for object in objects {
//    if let objectWithArea = object as? HasArea {
//    print("Area is \(objectWithArea.area)")
//    } else {
//    print("Something that doesn't have an area")
//    }
//    }
//    // Area is 12.5663708
//    // Area is 243610.0
//    // Something that doesn't have an area
//}
