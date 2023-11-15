//
//  CreditCardInvoker.swift
//  DesignPatters
//
//  Created by Josias Piña on 24/10/23.
//

import Foundation

class CreditCardInvoker {
    private var command: Command?

    func setCommand(command: Command) {
        self.command = command
    }

    func run() {
        command?.execute()
    }
}
