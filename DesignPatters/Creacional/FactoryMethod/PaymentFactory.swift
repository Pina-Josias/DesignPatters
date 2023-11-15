//
//  PaymentFactory.swift
//  DesignPatters
//
//  Created by Josias Piña on 22/10/23.
//

import Foundation

class PaymentFactory {
    static func buildPayment(typePayment: TypePayment) -> Payment {
        switch typePayment {
        case .GOOGLE:
            return GooglePayment()
        case .CARD:
            return CardPayment()
        }
    }
}
