//
//  ResolvingStrongReferenceCyclesForClosures.swift
//  AutomaticReferenceCounting
//
//  Created by Oleksii Pidgornyi on 09.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class ResolvingStrongReferenceCyclesForClosures: XCTestCase {

    

}

//class DefiningACaptureList {
//    lazy var someClosure: (Int, String) -> String = {
//        [unowned self, weak delegate = self.delegate!] (index: Int, stringToProcess: String) -> String in
//        // closure body goes here
//    }
//
//
//
//
//
//    lazy var someClosure: () -> String = {
//        [unowned self, weak delegate = self.delegate!] in
//        // closure body goes here
//    }
//}
//
//
//class WeakAndUnownedReferences {
//
//    class HTMLElement {
//
//        let name: String
//        let text: String?
//
//        lazy var asHTML: () -> String = {
//            [unowned self] in
//            if let text = self.text {
//                return "<\(self.name)>\(text)</\(self.name)>"
//            } else {
//                return "<\(self.name) />"
//            }
//        }
//
//        init(name: String, text: String? = nil) {
//            self.name = name
//            self.text = text
//        }
//
//        deinit {
//            print("\(name) is being deinitialized")
//        }
//
//    }
//
//
//
//
//
//    var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
//    print(paragraph!.asHTML())
//    // Prints "<p>hello, world</p>"
//
//
//
//
//
//    paragraph = nil
//    // Prints "p is being deinitialized"
//}
