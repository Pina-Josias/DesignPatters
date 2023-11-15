//
//  PaymentInAdvance.swift
//  DesignPatters
//
//  Created by Josias Piña on 22/10/23.
//

import Foundation

class PaymentInAdvanceCardFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return CardPaymentAF()
    }

    func createMethod() -> Method {
        return PaymentAdvancedMethod()
    }
}
