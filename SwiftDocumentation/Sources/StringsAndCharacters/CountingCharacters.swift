//
//  CountingCharacters.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 07.11.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - COUNTING CHARACTERS

class CountingCharacters: XCTestCase {

    func testCountChar() {
        let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
        print("unusualMenagerie has \(unusualMenagerie.count) characters")
        // Prints "unusualMenagerie has 40 characters"
        
        var word = "cafe"
        print("the number of characters in \(word) is \(word.count)")
        // Prints "the number of characters in cafe is 4"
        
        word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
        
        print("the number of characters in \(word) is \(word.count)")
        // Prints "the number of characters in café is 4"
    }
}
