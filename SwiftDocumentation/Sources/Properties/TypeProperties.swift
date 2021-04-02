//
//  TypeProperties.swift
//  Properties
//
//  Created by Oleksii Pidgornyi on 31.03.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//class TypeProperties: XCTestCase {
//
//
//}

class TypePrpertySyntax {
    
    struct SomeStructure {
        static var storedTypeProperty = "Some value."
        static var computedTypeProperty: Int {
            return 1
        }
    }
    
    enum SomeEnumeration {
        static var storedTypeProperty = "Some value."
        static var computedTypeProperty: Int {
            return 6
        }
    }
    
    class SomeClass {
        static var storedTypeProperty = "Some value."
        static var computedTypeProperty: Int {
            return 27
        }
        class var overrideableComputedTypeProperty: Int {
            return 107
        }
    }
}


class QueryingAndSetttingTypeProperties {
    
    struct SomeStructure {
        static var storedTypeProperty = "Some value."
        static var computedTypeProperty: Int {
            return 1
        }
    }
    
    enum SomeEnumeration {
        static var storedTypeProperty = "Some value."
        static var computedTypeProperty: Int {
            return 6
        }
    }
    
    class SomeClass {
        static var storedTypeProperty = "Some value."
        static var computedTypeProperty: Int {
            return 27
        }
        class var overrideableComputedTypeProperty: Int {
            return 107
        }
    }
    
    func testExecution() {
        print(SomeStructure.storedTypeProperty)
        // Prints "Some value."
        SomeStructure.storedTypeProperty = "Another value."
        print(SomeStructure.storedTypeProperty)
        // Prints "Another value."
        print(SomeEnumeration.computedTypeProperty)
        // Prints "6"
        print(SomeClass.computedTypeProperty)
        // Prints "27"
    }
}


class AudChan {
    struct AudioChannel {
        static let thresholdLevel = 10
        static var maxInputLevelForAllChannels = 0
        var currentLevel: Int = 0 {
            didSet {
                if currentLevel > AudioChannel.thresholdLevel {
                    // cap the new audio level to the threshold level
                    currentLevel = AudioChannel.thresholdLevel
                }
                if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                    // store this as the new overall maximum input level
                    AudioChannel.maxInputLevelForAllChannels = currentLevel
                }
            }
        }
    }
}


class AudChan1 {
    
    struct AudioChannel {
        static let thresholdLevel = 10
        static var maxInputLevelForAllChannels = 0
        var currentLevel: Int = 0 {
            didSet {
                if currentLevel > AudioChannel.thresholdLevel {
                    // cap the new audio level to the threshold level
                    currentLevel = AudioChannel.thresholdLevel
                }
                if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                    // store this as the new overall maximum input level
                    AudioChannel.maxInputLevelForAllChannels = currentLevel
                }
            }
        }
    }
    
    var leftChannel = AudioChannel()
    var rightChannel = AudioChannel()
    
    func testExecution() {
        leftChannel.currentLevel = 7
        print(leftChannel.currentLevel)
        // Prints "7"
        print(AudioChannel.maxInputLevelForAllChannels)
        // Prints "7"
        
        
        rightChannel.currentLevel = 11
        print(rightChannel.currentLevel)
        // Prints "10"
        print(AudioChannel.maxInputLevelForAllChannels)
        // Prints "10"
    }
}
