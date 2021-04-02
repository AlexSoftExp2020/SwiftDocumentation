//
//  StoredProperties.swift
//  Properties
//
//  Created by Oleksii Pidgornyi on 31.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//class StoredProperties: XCTestCase {
//
//
//
//}

class StoredProperties: XCTestCase {
    struct FixedLengthRange {
        var firstValue: Int
        let length: Int
    }
    var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
    // the range represents integer values 0, 1, and 2
    
    func testExecution() {
        rangeOfThreeItems.firstValue = 6
        // the range now represents integer values 6, 7, and 8
    }
}


class StoredPropertiesOfConstantStructureInstance: XCTestCase {
    struct FixedLengthRange {
        var firstValue: Int
        let length: Int
    }
    
    var rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
    // this range represents integer values 0, 1, 2, and 3
    
    func testExecution() {
        rangeOfFourItems.firstValue = 6
        // this will report an error, even though firstValue is a variable property
    }
}

class LazyStoredProperties: XCTestCase {
    
    class DataImporter {
        /*
         DataImporter is a class to import data from an external file.
         The class is assumed to take a nontrivial amount of time to initialize.
         */
        var filename = "data.txt"
        // the DataImporter class would provide data importing functionality here
    }
    
    class DataManager {
        lazy var importer = DataImporter()
        var data = [String]()
        // the DataManager class would provide data management functionality here
    }
    
    let manager = DataManager()
    
    func testExecution() {
        
        manager.data.append("Some data")
        manager.data.append("Some more data")
        // the DataImporter instance for the importer property has not yet been created
        
        print(manager.importer.filename)
        // the DataImporter instance for the importer property has now been created
        // Prints "data.txt"
    }
}

