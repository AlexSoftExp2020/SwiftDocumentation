//
//  CustomTypes.swift
//  AccessControl
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

//class CustomTypes: XCTestCase {
//
//    
//
//}

class CustomTypes {
    
    public class SomePublicClass {                  // explicitly public class
        public var somePublicProperty = 0            // explicitly public class member
        var someInternalProperty = 0                 // implicitly internal class member
        fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
        private func somePrivateMethod() {}          // explicitly private class member
    }
    
    class SomeInternalClass {                       // implicitly internal class
        var someInternalProperty = 0                 // implicitly internal class member
        fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
        private func somePrivateMethod() {}          // explicitly private class member
    }
    
    fileprivate class SomeFilePrivateClass {        // explicitly file-private class
        func someFilePrivateMethod() {}              // implicitly file-private class member
        private func somePrivateMethod() {}          // explicitly private class member
    }
    
    private class SomePrivateClass {                // explicitly private class
        func somePrivateMethod() {}                  // implicitly private class member
    }

}


//class FunctionTypes {
//    func someFunction() -> (SomeInternalClass, SomePrivateClass) {
//        // function implementation goes here
//    }
//
//
//
//
//
//    private func someFunction() -> (SomeInternalClass, SomePrivateClass) {
//        // function implementation goes here
//    }
//
//}

class EnumerationClass {
    public enum CompassPoint {
        case north
        case south
        case east
        case west
    }
}
