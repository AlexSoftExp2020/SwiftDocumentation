//
//  StrongReferenceCyclesBetweenClassInstances.swift
//  AutomaticReferenceCounting
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class StrongReferenceCyclesBetweenClassInstances: XCTestCase {

    

}

//class StrongReferenceCyclesBetweenClassInstances {
//    class Person {
//        let name: String
//        init(name: String) { self.name = name }
//        var apartment: Apartment?
//        deinit { print("\(name) is being deinitialized") }
//    }
//    
//    class Apartment {
//        let unit: String
//        init(unit: String) { self.unit = unit }
//        var tenant: Person?
//        deinit { print("Apartment \(unit) is being deinitialized") }
//    }
//
//    
//    
//    
//    var john: Person?
//    var unit4A: Apartment?
//    
//    
//    
//    
//    john = Person(name: "John Appleseed")
//    unit4A = Apartment(unit: "4A")
//    
//    
//    
//    
//    john!.apartment = unit4A
//    unit4A!.tenant = john
//    
//    
//    
//    john = nil
//    unit4A = nil
//}
