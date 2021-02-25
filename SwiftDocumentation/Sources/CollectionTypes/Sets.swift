//
//  Sets.swift
//  CollectionTypes
//
//  Created by Oleksii Pidgornyi on 29.12.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - SETS

class Sets: XCTestCase {

    func testHashValuesForSetTypes() {
        
        /*
        a == a (Reflexivity)
        a == b implies b == a (Symmetry)
        a == b && b == c implies a == c (Transitivity)
        */
    }
    
    func testCreatingAndInitializingAnEmptySet() {
        
        var letters = Set<Character>()
        print("letters is of type Set<Character> with \(letters.count) items.")
        // Prints "letters is of type Set<Character> with 0 items."
        
        letters.insert("a")
        // letters now contains 1 value of type Character
        letters = []
        // letters is now an empty set, but is still of type Set<Character>
    }
    
    func testCreatingASetWithAnArrayLiteral() {
        
        var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
        // favoriteGenres has been initialized with three initial items
    }
    
    func testAccessingAndModifyingASet() {
        
        var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
        
        print("I have \(favoriteGenres.count) favorite music genres.")
        // Prints "I have 3 favorite music genres."
        
        if favoriteGenres.isEmpty {
        print("As far as music goes, I'm not picky.")
        } else {
        print("I have particular music preferences.")
        }
        // Prints "I have particular music preferences."
        
        favoriteGenres.insert("Jazz")
        // favoriteGenres now contains 4 items
        
        if let removedGenre = favoriteGenres.remove("Rock") {
            print("\(removedGenre)? I'm over it.")
        } else {
        print("I never much cared for that.")
        }
        // Prints "Rock? I'm over it."
        
        if favoriteGenres.contains("Funk") {
        print("I get up on the good foot.")
        } else {
        print("It's too funky in here.")
        }
        // Prints "It's too funky in here."
    }
    
    func testIteratingOverASet() {
        
        var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
        
        for genre in favoriteGenres {
        print("\(genre)")
        }
        // Classical
        // Jazz
        // Hip hop
        
        for genre in favoriteGenres.sorted() {
        print("\(genre)")
        }
        // Classical
        // Hip hop
        // Jazz
    }
}
