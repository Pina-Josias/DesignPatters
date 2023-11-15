//
//  SecureCreditCard.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class SecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago realizado con protocolo seguro")
    }
}
