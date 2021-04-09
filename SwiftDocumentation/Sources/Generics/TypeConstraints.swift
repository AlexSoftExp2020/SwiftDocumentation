//
//  TypeConstraints.swift
//  Generics
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class TypeConstraints: XCTestCase {

    

}

//class TypeConstraintSyntax {
//    func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
//        // function body goes here
//    }
//}
//
//class TypeConstraintsInAction {
//    func findIndex(ofString valueToFind: String, in array: [String]) -> Int? {
//        for (index, value) in array.enumerated() {
//            if value == valueToFind {
//                return index
//            }
//        }
//        return nil
//    }
//    
//    
//    
//    
//    
//    
//    let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
//    if let foundIndex = findIndex(ofString: "llama", in: strings) {
//        print("The index of llama is \(foundIndex)")
//    }
//    // Prints "The index of llama is 2"
//    
//    
//    
//    
//    
//    func findIndex<T>(of valueToFind: T, in array:[T]) -> Int? {
//        for (index, value) in array.enumerated() {
//            if value == valueToFind {
//                return index
//            }
//        }
//        return nil
//    }
//    
//    
//    
//    
//    
//    func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
//        for (index, value) in array.enumerated() {
//            if value == valueToFind {
//                return index
//            }
//        }
//        return nil
//    }
//    
//    
//    
//    
//    
//    let doubleIndex = findIndex(of: 9.3, in: [3.14159, 0.1, 0.25])
//    // doubleIndex is an optional Int with no value, because 9.3 isn't in the array
//    let stringIndex = findIndex(of: "Andrea", in: ["Mike", "Malcolm", "Andrea"])
//    // stringIndex is an optional Int containing a value of 2
//}
