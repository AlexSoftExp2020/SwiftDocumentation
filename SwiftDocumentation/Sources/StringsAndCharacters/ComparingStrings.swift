//
//  ComparingStrings.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 07.11.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - COMPARING STRINGS

class ComparingStrings: XCTestCase {
    
    func testStringAndCharacterEquality() {
        
        let quotation = "We're a lot alike, you and I."
        let sameQuotation = "We're a lot alike, you and I."
        if quotation == sameQuotation {
            print("These two strings are considered equal")
        }
        // Prints "These two strings are considered equal"
        
        // "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
        let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
        
        // "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
        let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
        
        if eAcuteQuestion == combinedEAcuteQuestion {
            print("These two strings are considered equal")
        }
        // Prints "These two strings are considered equal"
        
        let latinCapitalLetterA: Character = "\u{41}"
        
        let cyrillicCapitalLetterA: Character = "\u{0410}"
        
        if latinCapitalLetterA != cyrillicCapitalLetterA {
            print("These two characters are not equivalent.")
        }
        // Prints "These two characters are not equivalent."
        
        func testPrefixAndSuffixEquality() {
            
            let romeoAndJuliet = [
                "Act 1 Scene 1: Verona, A public place",
                "Act 1 Scene 2: Capulet's mansion",
                "Act 1 Scene 3: A room in Capulet's mansion",
                "Act 1 Scene 4: A street outside Capulet's mansion",
                "Act 1 Scene 5: The Great Hall in Capulet's mansion",
                "Act 2 Scene 1: Outside Capulet's mansion",
                "Act 2 Scene 2: Capulet's orchard",
                "Act 2 Scene 3: Outside Friar Lawrence's cell",
                "Act 2 Scene 4: A street in Verona",
                "Act 2 Scene 5: Capulet's mansion",
                "Act 2 Scene 6: Friar Lawrence's cell"
            ]
            
            var act1SceneCount = 0
            for scene in romeoAndJuliet {
                if scene.hasPrefix("Act 1 ") {
                    act1SceneCount += 1
                }
            }
            print("There are \(act1SceneCount) scenes in Act 1")
            // Prints "There are 5 scenes in Act 1"
            
            var mansionCount = 0
            var cellCount = 0
            for scene in romeoAndJuliet {
                if scene.hasSuffix("Capulet's mansion") {
                    mansionCount += 1
                } else if scene.hasSuffix("Friar Lawrence's cell") {
                    cellCount += 1
                }
            }
            print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
            // Prints "6 mansion scenes; 2 cell scenes"
        }
    }
}
