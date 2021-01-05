//
//  Unicode.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 07.11.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - UNICODE

class Unicode: XCTestCase {
    
    func testExtendedGraphemeClusters() {
        
        let eAcute: Character = "\u{E9}"                         // é
        let combinedEAcute: Character = "\u{65}\u{301}"          // e followed by
        // eAcute is é, combinedEAcute is é
        
        let precomposed: Character = "\u{D55C}"                  // 한
        let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
        // precomposed is 한, decomposed is 한
        
        let enclosedEAcute: Character = "\u{E9}\u{20DD}"
        // enclosedEAcute is é⃝
        
        let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
        // regionalIndicatorForUS is 🇺🇸
    }
}
