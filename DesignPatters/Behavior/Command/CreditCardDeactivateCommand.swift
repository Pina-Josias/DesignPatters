//
//  CreditCardDeactivateCommand.swift
//  DesignPatters
//
//  Created by Josias Piña on 24/10/23.
//

import Foundation

class CreditCardDeactivateCommand: Command {
    var creditCardReceiver: CreditCardReceiver

    init(creditCardReceiver: CreditCardReceiver) {
        self.creditCardReceiver = creditCardReceiver
    }

    func execute() {
        creditCardReceiver.desactivate()
        creditCardReceiver.sendSmsToCustomerDeactivate()
    }
}
