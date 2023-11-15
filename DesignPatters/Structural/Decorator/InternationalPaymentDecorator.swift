//
//  InternationalPayment.swift
//  DesignPatters
//
//  Created by Josias Piña on 9/11/23.
//

import Foundation

class InternationalPaymentDecorator: CreditDecorator {
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }

    override func showCredit() {
        decorated.showCredit()
        configInternationalPayment()
    }

    func configInternationalPayment() {
        print("Card configured with international payment")
    }
}
