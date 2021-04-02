//
//  TypeMethods.swift
//  Methods
//
//  Created by Oleksii Pidgornyi on 02.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class TypeMethods: XCTestCase {


}

class SomeClass {
    class func someTypeMethod() {
        // type method implementation goes here
    }
    
    func testExecution() {
        SomeClass.someTypeMethod()
    }
}


struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Argyrios")

func testExecution() {
    player.complete(level: 1)
    print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
    // Prints "highest unlocked level is now 2"
}

func testExecution1() {
    
    player = Player(name: "Beto")
    
    if player.tracker.advance(to: 6) {
        print("player is now on level 6")
    } else {
        print("level 6 has not yet been unlocked")
    }
    // Prints "level 6 has not yet been unlocked"

}

