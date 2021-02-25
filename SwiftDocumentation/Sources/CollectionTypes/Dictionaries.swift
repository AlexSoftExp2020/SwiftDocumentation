//
//  Dictionaries.swift
//  CollectionTypes
//
//  Created by Oleksii Pidgornyi on 29.12.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - DICTIONARIES

class Dictionaries: XCTestCase {

    func testCreatingAnEmptyDictionary() {
        
    var namesOfIntegers = [Int: String]()
    // namesOfIntegers is an empty [Int: String] dictionary
    
    
    namesOfIntegers[16] = "sixteen"
    // namesOfIntegers now contains 1 key-value pair
    namesOfIntegers = [:]
    // namesOfIntegers is once
    }
    
    func testCreatingADictionaryWithADictionaryLiteral() {
        var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
            airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    }
    
    func testAccessingAndModifyingADictionary() {
        
       var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
        print("The airports dictionary contains \(airports.count) items.")
        // Prints "The airports dictionary contains 2 items."
        
        
        if airports.isEmpty {
        print("The airports dictionary is empty.")
        } else {
        print("The airports dictionary is not empty.")
        }
        // Prints "The airports dictionary is not empty."
        
        
        
        airports["LHR"] = "London"
        // the airports dictionary now contains 3 items
        
        
        
        airports["LHR"] = "London Heathrow"
        // the value for "LHR" has been changed to "London Heathrow"
        
        
        
        if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
            print("The old value for DUB was \(oldValue).")
        }
        // Prints "The old value for DUB was Dublin."
        
        
        
        if let airportName = airports["DUB"] {
            print("The name of the airport is \(airportName).")
        } else {
        print("That airport is not in the airports dictionary.")
        }
        // Prints "The name of the airport is Dublin Airport."
        
        
        
        airports["APL"] = "Apple International"
        // "Apple International" is not the real airport for APL, so delete it
        airports["APL"] = nil
        // APL has now been removed from the dictionary
        
        
        
        if let removedValue = airports.removeValue(forKey: "DUB") {
            print("The removed airport's name is \(removedValue).")
        } else {
        print("The airports dictionary does not contain a value for DUB.")
        }
        // Prints "The removed airport's name is Dublin Airport."
    }
    
    func testIteratingOverADictionary() {
        
        var airports = ["LHR": "London Heathrow", "YYZ": "Toronto Pearson"]
        
        for (airportCode, airportName) in airports {
        print("\(airportCode): \(airportName)")
        }
        // LHR: London Heathrow
        // YYZ: Toronto Pearson
        
        
        for airportCode in airports.keys {
        print("Airport code: \(airportCode)")
        }
        // Airport code: LHR
        // Airport code: YYZ
        
        for airportName in airports.values {
        print("Airport name: \(airportName)")
        }
        // Airport name: London Heathrow
        // Airport name: Toronto Pearson
        
        
        
        let airportCodes = [String](airports.keys)
        // airportCodes is ["LHR", "YYZ"]
        let airportNames = [String](airports.values)
        // airportNames is ["London Heathrow", "Toronto Pearson"]
    }
}
