//
//  ConcreteColleage1.swift
//  DesignPatters
//
//  Created by Josias Piña on 25/10/23.
//

import Foundation

class ConcreteColleage1: Colleage {
    override func send(message: String) {
        mediator.send(message: message, colleague: self)
    }

    override func messageReceived(message: String) {
        print("El usuario 1 ha recibido el mensaje: \(message)")
    }
}
