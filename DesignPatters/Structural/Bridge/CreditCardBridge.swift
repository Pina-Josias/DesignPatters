//
//  CreditCardBridge.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class CreditCardBridge {
    let creditCard: CreditCardProtocol

    init(creditCard: CreditCardProtocol) {
        self.creditCard = creditCard
    }

    func makePayment() {}
}
