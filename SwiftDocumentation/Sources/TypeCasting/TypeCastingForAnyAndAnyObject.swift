//
//  TypeCastingForAnyAndAnyObject.swift
//  TypeCasting
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class TypeCastingForAnyAndAnyObject: XCTestCase {

    
}

//class TypeCastingForAnyAndAnyObject {
//    var things = [Any]()
//    
//    things.append(0)
//    things.append(0.0)
//    things.append(42)
//    things.append(3.14159)
//    things.append("hello")
//    things.append((3.0, 5.0))
//    things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
//    things.append({ (name: String) -> String in "Hello, \(name)" })
//    
//    
//    
//    
//    
//    for thing in things {
//    switch thing {
//    case 0 as Int:
//    print("zero as an Int")
//    case 0 as Double:
//    print("zero as a Double")
//    case let someInt as Int:
//    print("an integer value of \(someInt)")
//    case let someDouble as Double where someDouble > 0:
//    print("a positive double value of \(someDouble)")
//    case is Double:
//    print("some other double value that I don't want to print")
//    case let someString as String:
//    print("a string value of \"\(someString)\"")
//    case let (x, y) as (Double, Double):
//    print("an (x, y) point at \(x), \(y)")
//    case let movie as Movie:
//    print("a movie called \(movie.name), dir. \(movie.director)")
//    case let stringConverter as (String) -> String:
//    print(stringConverter("Michael"))
//    default:
//    print("something else")
//    }
//    }
//    
//    // zero as an Int
//    // zero as a Double
//    // an integer value of 42
//    // a positive double value of 3.14159
//    // a string value of "hello"
//    // an (x, y) point at 3.0, 5.0
//    // a movie called Ghostbusters, dir. Ivan Reitman
//    // Hello, Michael
//    
//    
//    
//    
//    
//    let optionalNumber: Int? = 3
//    things.append(optionalNumber)        // Warning
//    things.append(optionalNumber as Any) // No warning
//}
