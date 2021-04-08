//
//  PropertyRequirements.swift
//  Protocols
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class PropertyRequirements: XCTestCase {

    

}

//class PropertyRequirements {
//    protocol SomeProtocol {
//        var mustBeSettable: Int { get set }
//        var doesNotNeedToBeSettable: Int { get }
//    }
//    
//    
//    
//    
//    protocol AnotherProtocol {
//        static var someTypeProperty: Int { get set }
//    }
//    
//    
//    
//    
//    protocol FullyNamed {
//        var fullName: String { get }
//    }
//    
//    
//    
//    
//    struct Person: FullyNamed {
//        var fullName: String
//    }
//    let john = Person(fullName: "John Appleseed")
//    // john.fullName is "John Appleseed"
//    
//    
//    
//    
//    
//    class Starship: FullyNamed {
//        var prefix: String?
//        var name: String
//        init(name: String, prefix: String? = nil) {
//            self.name = name
//            self.prefix = prefix
//        }
//        var fullName: String {
//            return (prefix != nil ? prefix! + " " : "") + name
//        }
//    }
//    var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
//    // ncc1701.fullName is "USS Enterprise"
//
//}

