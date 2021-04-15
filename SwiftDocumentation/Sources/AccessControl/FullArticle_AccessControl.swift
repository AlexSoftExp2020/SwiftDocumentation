//
//  FullArticle_AccessControl.swift
//  AccessControl
//
//  Created by Oleksii Pidgornyi on 14.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class FullArticle_AccessControl: XCTestCase {

    

}

//class Access_Control: XCTestCase {
//    
//    /*
//     
//You can use Access Control for:
//     
//***************************
//     (Type)Class
//     (Type)Structure
//     (Type)Enumeration
//***************************
//     Properties
//     Methods
//     Initializators
//     Subscripts
//***************************
//     Functions
//***************************
//     Protocols
//     Global variables
//***************************
//     
//     */
//}
//
//
//
//
//
////2
//
//class Modules_and_Source_Files: XCTestCase {
//    
//    //Module -> Framework or Application
//    
//    //Source File -> Single file in Framework or Application
//}
//
//
//
//
//
////3
//
//class Access_Levels: XCTestCase {
//    
//    
//    //  OPEN -> Class -> Inheritance Inside and Outside of Module,
//    //  Members of class -> Override Inside and Outside of that module
//    
//    //  PUBLIC -> Class -> Inheritance Inside of Module,
//    //  Members of class -> Override inside of that module
//    
//    //  INTERNAL -> Inside of Module
//    //  FILE PRIVATE -> Inside of File
//    //  PRIVATE -> Inside of scope
//    
//    
//    //---------- Guiding Principle Of Access Levels ----------//
//    
//    func guidingPrincipleOfAccessLevels() {
//        
//        //Public variable can't be defined as Internal, File Private, Private
//        //Function can't have higher access than its parameters or return value
//        
//    }
//    
//    //---------- Default Access Levels ----------//
//    
//    func defaultAccesLevels() {
//        
//        //All entities have internal access(WITH TWO EXCEPTIONS)
//    }
//    
//    //---------- Access Levels For Single-Target Apps ----------//
//    
//    func accessLevelsForSingleTargetApps() {
//        
//       //By default access is internal
//    }
//    
//    //---------- Access Levels for Frameworks ----------//
//    
//    func accessLevelsForFrameworks() {
//        
//        //For Framework use OPEN, PUBLIC.
//    }
//    
//    //---------- Access Levels For Unit Test Targets ----------//
//    
//    func accessLevelsForUnitTestTargets() {
//        
//         // @testable for module
//    }
//}
//
//
//
//
//
////4
//
//class Access_Control_Syntax: XCTestCase {
//    
//    public class SomePublicClass {}
//    internal class SomeInternalClass {}
//    fileprivate class SomeFilePrivateClass {}
//    private class SomePrivateClass {}
//    
//    public var somePublicVariable = 0
//    internal let someInternalConstant = 0
//    fileprivate func someFilePrivateFunction() {}
//    private func somePrivateFunction() {}
//    
//}
//
//
//
//
//
////5
//
//class Custom_Types: XCTestCase {
//    
//    //If you mark class with PUBLIC, than all inside entities will be internal by default
//    
//    public class SomePublicClass {                  // явный public класс
//        public var somePublicProperty = 0            // явный public член класса
//        var someInternalProperty = 0                 // неявный internal член класса
//        fileprivate func someFilePrivateMethod() {}  // явный file-private член класса
//        private func somePrivateMethod() {}          // явный private член класса
//    }
//    
//    class SomeInternalClass {                       // неявный internal класс
//        var someInternalProperty = 0                 // неявный internal член класса
//        fileprivate func someFilePrivateMethod() {}  // явный file-private член класса
//        private func somePrivateMethod() {}          // явный private член класса
//    }
//    
//    fileprivate class SomeFilePrivateClass {        // явный file-private класс
//        func someFilePrivateMethod() {}              // неявный file-private член класса
//        private func somePrivateMethod() {}          // явный private член класса
//    }
//    
//    private class SomePrivateClass {                // явный private класс
//        func somePrivateMethod() {}                  // неявный private член класса
//    }
//    
//    
//    //---------- Tuple Types ----------//
//    
//    func tupleTypes() {
//        
//        // Access control defines automatically, not explicitly.
//        // Tuple will have the lowest access from all types inside of the tuple.
//    }
//    
//    
//    //---------- Function Types ----------//
//    
//    func functionTypes() {
//        
//        // Function will have the lowest access from all parameters and return value
//        
//    }
//    
//    
//    //---------- Enumeration Types ----------//
//    
//    func enumerationTypes() {
//        
//        // Every case of the Enumeration receive the same access level as
//        
//    }
//    
//    
//    //---------- Raw Values And Associated Values ----------//
//    
//    func rawValuesAndAssociatedValues() {
//        
//        // Raw values must not have lower access rather than Enumeration.
//        
//    }
//    
//    
//    //---------- Nested Types ----------//
//    
//    func nestedTypes() {
//        
//        //Nested type is the same as it's containig type(except public).
//        //Nested PUBLIC types must be explicitly declare.
//        
//    }
//}
//
//
//
//
//
////6
//
//class Subclassing: XCTestCase {
//    
//    // Subclass must not be higher than parent class.
//    
//    public class A {
//        fileprivate func someMethod() {}
//    }
//    
//    internal class B: A {
//        override internal func someMethod() {}
//    }
//    
//  //////////////////////////////////////////////////////
//    
//    //If two classes located in one source file, than method in subclass can call method rom super class(with lower access).
//    
//    public class C {
//        fileprivate func someMethod() {}
//    }
//    
//    internal class D: C {
//        override internal func someMethod() {
//            super.someMethod()
//        }
//    }
//  //////////////////////////////////////////////////
//    
//}
//
//
//
//
//
////7
//
//class Constants_Variables_Properties_and_Subscripts: XCTestCase {
//    
//    
//    //Constants, Variables, Properties, Subscripts can't be higher than class to which it belongs.
//    
//    //---------- Getters and Setters ----------//
//    
//    func gettersAndSetters() {
//        
//        //getters and setters for constants, variables and subscripts receive the same access level as their constants, variables and subscripts.
//        //you can set for getter and setter lower access
//        //fileprivate(set)
//        //private(set)
//        //internal(set)
//        
//        struct TrackedString {
//            private(set) var numberOfEdits = 0
//            var value: String = "" {
//                didSet {
//                    numberOfEdits += 1
//                }
//            }
//        }
//        
//        
//        var stringToEdit = TrackedString()
//        stringToEdit.value = "This string will be tracked."
//        stringToEdit.value += " This edit will increment numberOfEdits."
//        stringToEdit.value += " So will this one."
//        print("Количество изменений равно \(stringToEdit.numberOfEdits)")
//        // Выведет "Количество изменений равно 3"
//        
//        
//        //We can combine PUBLIC and PRIVATE access levels
//        
////        public struct TrackedString {
////            public private(set) var numberOfEdits = 0
////            public var value: String = "" {
////                didSet {
////                    numberOfEdits += 1
////                }
////            }
////            public init() {}
////        }
//        
//    }
//}
//
//
//
//
//
////8
//
//class Initializers: XCTestCase {
//    
//    
//    
//    //---------- Default Initializers ----------//
//    
//    func defaultInitializers() {
//        
//    }
//    
//    
//    //---------- Default Memberwise Initializers for Structure Types ----------//
//    
//    func defaultMemberwiseInitializersForStructureTypes() {
//        
//    }
//}
//
//
//
//
//
////9
//
//class Protocols: XCTestCase {
//    
//    
//    //---------- Protocol Inheritance ----------//
//    
//    func protocolInheritance() {
//        
//    }
//    
//    
//    //---------- Protocol Conformance ----------//
//    
//    func protocolConformance() {
//        
//    }
//}
//
//
//
//
//
////10
//
//class Extensions: XCTestCase {
//    
//    
//    //---------- Private Members in Extensions ----------//
//    
//    func privateMembersInExtensions() {
//        
//    }
//}
//
//
//
//
//
////11
//
//class Generics: XCTestCase {
//    
//}
//
//
//
//
//
////12
//
//class TypeAliases: XCTestCase {
//    
//}
