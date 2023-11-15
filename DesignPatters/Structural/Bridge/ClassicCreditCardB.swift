//
//  ClassicCreditCardB.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class ClassicCreditCardB: CreditCardBridge {
    override init(creditCard: CreditCardProtocol) {
        super.init(creditCard: creditCard)
    }

    override func makePayment() {
        creditCard.makePayment()
    }
}
