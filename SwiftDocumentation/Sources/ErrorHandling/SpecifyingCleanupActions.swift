//
//  SpecifyingCleanupActions.swift
//  ErrorHandling
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class SpecifyingCleanupActions: XCTestCase {

}

//class SpecifyingCleanupActions {
//    func processFile(filename: String) throws {
//        if exists(filename) {
//            let file = open(filename)
//            defer {
//                close(file)
//            }
//            while let line = try file.readline() {
//                // Work with the file.
//            }
//            // close(file) is called here, at the end of the scope.
//        }
//    }
//}
