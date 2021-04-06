//
//  ErrorHandling3.swift
//  ErrorHandling
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ErrorHandling3: XCTestCase {

    

}


enum ResourceError: Error {
    case invalidPath
    case missing(validPaths: [String])
}

extension ResourceError: LocalizedError {
    public var errorDescription: String? {
     
        switch self {
        case .invalidPath: return NSLocalizedString("The path is invalid", comment: "")
        case .missing(let validPaths):
            return NSLocalizedString("Missing resource. Valid resources are:", comment: "") + "\(validPaths)"
        }
        
    }
    
}

func readResource(atPath: String) throws -> Data? {
    guard atPath.isEmpty != true else {
        throw ResourceError.invalidPath
    }
    
    let resourcePaths = ["sandbox/image", "sandbox/doc"]
    guard resourcePaths.contains(atPath) == true else {
        throw ResourceError.missing(validPaths: resourcePaths)
    }
    
    return nil
}

//MARK: - Example 1

//do {
//    let data = try readResource(atPath: "")
//} catch ResourceError.invalidPath {
//    print("Error! Invalid path.")
//}

//MARK: - Example 2

let data = try? readResource(atPath: "")

//if data == nil {
//    print("Could not read resource")
//}

//MARK: - Example 3

func readWithRethrow() throws -> Data? {
    return try readResource(atPath: "")
}

//MARK: - Example 4

//do {
//    let data = try readResource(atPath: "sandbox/video")
//} catch ResourceError.invalidPath {
//    print("Error! Invalid path")
//} catch ResourceError.missing(let paths) {
//    print("Error! Missing resource. Valid paths are \(paths)")
//}

//MARK: - Example 5

//do {
//    let data = try readResource(atPath: "sandbox/video")
//} catch let error as ResourceError {
//    print("Error! \(error.errorDescription ?? ""))")
//}
