//
//  Colleage.swift
//  DesignPatters
//
//  Created by Josias Piña on 25/10/23.
//

import Foundation

class Colleage {
    let mediator: Mediator

    init(mediator: Mediator) {
        self.mediator = mediator
    }

    func send(message: String) {}
    func messageReceived(message: String) {}
}
