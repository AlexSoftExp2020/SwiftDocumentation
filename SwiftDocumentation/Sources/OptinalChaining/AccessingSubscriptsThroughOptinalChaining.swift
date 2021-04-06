//
//  AccessingSubscriptsThroughOptinalChaining.swift
//  OptinalChaining
//
//  Created by Oleksii Pidgornyi on 06.04.2021.
//  Copyright © 2021 Oleksii Pidgornyi. All rights reserved.
//

import XCTest

class AccessingSubscriptsThroughOptinalChaining: XCTestCase {

    

}

//class AccessingSubscriptsThroughOptinalChaining {
//
//    if let firstRoomName = john.residence?[0].name {
//        print("The first room name is \(firstRoomName).")
//    } else {
//    print("Unable to retrieve the first room name.")
//    }
//    // Prints "Unable to retrieve the first room name."
//
//
//
//
//
//    john.residence?[0] = Room(name: "Bathroom")
//
//
//
//
//    let johnsHouse = Residence()
//    johnsHouse.rooms.append(Room(name: "Living Room"))
//    johnsHouse.rooms.append(Room(name: "Kitchen"))
//    john.residence = johnsHouse
//
//    if let firstRoomName = john.residence?[0].name {
//        print("The first room name is \(firstRoomName).")
//    } else {
//    print("Unable to retrieve the first room name.")
//    }
//    // Prints "The first room name is Living Room."
//}
//
//
//class AccessingSubscriptsOfOptinalType {
//    var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
//    testScores["Dave"]?[0] = 91
//    testScores["Bev"]?[0] += 1
//    testScores["Brian"]?[0] = 72
//    // the "Dave" array is now [91, 82, 84] and the "Bev" array is now [80, 94, 81]
//
//}
