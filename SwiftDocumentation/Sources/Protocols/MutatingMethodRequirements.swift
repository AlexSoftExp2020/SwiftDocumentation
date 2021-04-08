//
//  MutatingMethodRequirements.swift
//  Protocols
//
//  Created by Oleksii Pidgornyi on 08.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class MutatingMethodRequirements: XCTestCase {

    
}

//class MutatingMethodRequirements {
//    /*
//     protocol Togglable {
//     mutating func toggle()
//     }
//     */
//    
//    
//    
//    
//    enum OnOffSwitch: Togglable {
//        case off, on
//        mutating func toggle() {
//            switch self {
//            case .off:
//                self = .on
//            case .on:
//                self = .off
//            }
//        }
//    }
//    var lightSwitch = OnOffSwitch.off
//    lightSwitch.toggle()
//    // lightSwitch is now equal to .on
//}
