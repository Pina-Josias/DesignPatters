//
//  SecureDecorator.swift
//  DesignPatters
//
//  Created by Josias Piña on 9/11/23.
//

import Foundation

class SecureDecorator: CreditDecorator {
    override init(decorated: CreditComponent) {
        super.init(decorated: decorated)
    }

    override func showCredit() {
        decorated.showCredit()
        configSecurePayment()
    }

    func configSecurePayment() {
        print("Card configured with secure payment")
    }
}
