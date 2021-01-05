//
//  TypeAliases.swift
//  Basics
//
//  Created by Oleksii Pidgornyi on 16.10.2020.
//  Copyright © 2020 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//MARK: - TYPE ALIASES

class TypeAliases: XCTestCase {

    typealias AudioSample = UInt16
    
    var maxAmplitudeFound = AudioSample.min
    // maxAmplitudeFound is now 0
}
