//
//  ProtocolComposition.swift
//  Protocols
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ProtocolComposition: XCTestCase {

    

}

//class ProtocolComposition {
//    protocol Named {
//        var name: String { get }
//    }
//    protocol Aged {
//        var age: Int { get }
//    }
//    struct Person: Named, Aged {
//        var name: String
//        var age: Int
//    }
//    func wishHappyBirthday(to celebrator: Named & Aged) {
//        print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
//    }
//    let birthdayPerson = Person(name: "Malcolm", age: 21)
//    wishHappyBirthday(to: birthdayPerson)
//    // Prints "Happy birthday, Malcolm, you're 21!"
//    
//    
//    
//    
//    
//    
//    class Location {
//        var latitude: Double
//        var longitude: Double
//        init(latitude: Double, longitude: Double) {
//            self.latitude = latitude
//            self.longitude = longitude
//        }
//    }
//    class City: Location, Named {
//        var name: String
//        init(name: String, latitude: Double, longitude: Double) {
//            self.name = name
//            super.init(latitude: latitude, longitude: longitude)
//        }
//    }
//    func beginConcert(in location: Location & Named) {
//        print("Hello, \(location.name)!")
//    }
//    
//    let seattle = City(name: "Seattle", latitude: 47.6, longitude: -122.3)
//    beginConcert(in: seattle)
//    // Prints "Hello, Seattle!"
//
//
//}
