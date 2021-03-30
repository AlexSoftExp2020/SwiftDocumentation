//
//  Autoclosures.swift
//  Closures
//
//  Created by Oleksii Pidgornyi on 23.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class Autoclosures: XCTestCase {
    
    var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    
    func testExecution1() {
        
        var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        print(customersInLine.count)
        // Prints "5"
        
        let customerProvider = { customersInLine.remove(at: 0) }
        print(customersInLine.count)
        // Prints "5"
        
        print("Now serving \(customerProvider())!")
        // Prints "Now serving Chris!"
        
        print(customersInLine.count)
        // Prints "4"
    }
    
    
    // customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
    func serve(customer customerProvider: () -> String) {
        print("Now serving \(customerProvider())!")
    }
    
    func testExecution2() {
        serve(customer: { customersInLine.remove(at: 0) } )
        // Prints "Now serving Alex!"
    }
    
    // customersInLine is ["Ewa", "Barry", "Daniella"]
    func serve1(customer customerProvider: @autoclosure () -> String) {
        print("Now serving \(customerProvider())!")
    }
    
    func testExecution3() {
        serve1(customer: customersInLine.remove(at: 0))
        // Prints "Now serving Ewa!"
    }
    
    // customersInLine is ["Barry", "Daniella"]
    var customerProviders: [() -> String] = []
    func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
        customerProviders.append(customerProvider)
    }
    
    func testExecution4() {
        
        collectCustomerProviders(self.customersInLine.remove(at: 0))
        collectCustomerProviders(self.customersInLine.remove(at: 0))
        
        print("Collected \(customerProviders.count) closures.")
        // Prints "Collected 2 closures."
        for customerProvider in customerProviders {
        print("Now serving \(customerProvider())!")
        }
        // Prints "Now serving Barry!"
        // Prints "Now serving Daniella!"
    }
}
