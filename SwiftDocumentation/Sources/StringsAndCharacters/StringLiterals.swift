//
//  StringLiterals.swift
//  StringsAndCharacters
//
//  Created by Oleksii Pidgornyi on 25.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - STRING LITERALS

class StringLiterals: XCTestCase {

let someString = "Some string literal value"
}
 
//MARK: - MULTILINE STRING LITERALS

class MultilineStringLiterals: XCTestCase {
    
    let quotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin,
    please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on
    till you come to the end; then stop."
    """
        
        let singleLineString = "These are the same."
        let multilineString = """
    These are the same.
    """
        
        let softWrappedQuotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin, \
    please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on \
    till you come to the end; then stop."
    """
        
        let lineBreaks = """

    This string starts with a line break.
    It also ends with a line break.

    """
}

//MARK: - SPECIAL CHARACTERS IN STRING LITERALS

class SpecialCharactersInStringLiterals: XCTestCase {
    
    let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
    // "Imagination is more important than knowledge" - Einstein
    let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
    let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
    let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
}

//MARK: - EXTENDED STRING DELIMETERS

class ExtendedStringDelimeters: XCTestCase {
    
//    let threeMoreDoubleQuotationMarks = #"""
//    Here are three more double quotes: """
//    """
//#
}
