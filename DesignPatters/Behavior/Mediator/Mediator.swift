//
//  Mediatore.swift
//  DesignPatters
//
//  Created by Josias Piña on 25/10/23.
//

import Foundation

protocol Mediator {
    func send(message: String, colleague: Colleage)
}
