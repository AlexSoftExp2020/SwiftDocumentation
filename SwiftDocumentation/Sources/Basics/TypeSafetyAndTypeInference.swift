//
//  TypeSafetyAndTypeInference.swift
//  Basics
//
//  Created by Oleksii Pidgornyi on 16.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - TYPE SAFETY AND TYPE INFERENCE

class TypeSafetyAndTypeInference: XCTestCase {
    
    // meaningOfLife is inferred to be of type Int
    let meaningOfLife = 42
    
    // pi is inferred to be of type Double
    let pi = 3.14159
    
    
    let anotherPi = 3 + 0.14159
    // anotherPi is also inferred to be of type Double
}
