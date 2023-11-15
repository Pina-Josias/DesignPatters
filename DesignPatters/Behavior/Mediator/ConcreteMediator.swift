//
//  ConcreteMediator.swift
//  DesignPatters
//
//  Created by Josias Piña on 25/10/23.
//

import Foundation

class ConcreteMediator: Mediator {
    var user1: ConcreteColleage1?
    var user2: ConcreteColleage2?

    func setColleage1(colleage1: ConcreteColleage1) {
        user1 = colleage1
    }

    func setColleage2(colleage2: ConcreteColleage2) {
        user2 = colleage2
    }

    func send(message: String, colleague: Colleage) {
        if colleague === user1 {
            user2?.messageReceived(message: message)
        } else if colleague === user2 {
            user1?.messageReceived(message: message)
        }
    }
}
