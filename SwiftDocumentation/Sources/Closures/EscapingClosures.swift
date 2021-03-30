//
//  EscapingClosures.swift
//  Closures
//
//  Created by Oleksii Pidgornyi on 23.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class EscapingClosures: XCTestCase {

    var x = 10
    var completionHandlers: [() -> Void] = []
    
    func testSomeFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
        completionHandlers.append(completionHandler)
    }
    
    func testSomeFunctionWithNonescapingClosure(closure: () -> Void) {
        closure()
    }
    
    
    
    func doSomething() {
        testSomeFunctionWithEscapingClosure { self.x = 100 }
        testSomeFunctionWithNonescapingClosure { x = 200 }
    }
    
    func testExecution() {
        let instance = SomeClass()
        instance.testDoSomething()
        print(instance.x)
        // Prints "200"
        
        completionHandlers.first?()
        print(instance.x)
        // Prints "100"
    }
}

class SomeClass: XCTestCase {
    
    var x = 10
    
    var completionHandlers: [() -> Void] = []
    
    func testSomeFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
        completionHandlers.append(completionHandler)
    }
    
    func testSomeFunctionWithNonescapingClosure(closure: () -> Void) {
        closure()
    }
    
    func testDoSomething() {
        testSomeFunctionWithEscapingClosure { self.x = 100 }
        testSomeFunctionWithNonescapingClosure { x = 200 }
    }
}
