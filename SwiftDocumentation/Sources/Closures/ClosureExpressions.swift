//
//  ClosureExpressions.swift
//  Closures
//
//  Created by Oleksii Pidgornyi on 23.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class SortedMethod: XCTestCase {
    
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    
    func testBackward(_ s1: String, _ s2: String) -> Bool {
        return s1 > s2
    }
    
    func testExecution() {
        var reversedNames = names.sorted(by: testBackward)
        // reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
    }
}

class ClosureExpressionSyntax: XCTestCase {
    
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    
    func testExecution() {
        var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
        return s1 > s2
        })
        
        reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
    }
}

class InferringTypeFromContext: XCTestCase {
    
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    
    func testExecution() {
      var reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
    }
}

class ImplicitReturnsFromSingleExpressionClosures: XCTestCase {
    
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    
    func testExecution() {
        var reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
    }
}

class ShorthandArgumentNames: XCTestCase {
    
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    
    func testExecution() {
       var reversedNames = names.sorted(by: { $0 > $1 } )
    }
}

class OperatorMethods: XCTestCase {
    
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    
    func testExecution() {
       var reversedNames = names.sorted(by: >)
    }
}
