//
//  InsecureCreditCard.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class InsecureCreditCard: CreditCardProtocol {
    func makePayment() {
        print("Pago realizado sin seguridad")
    }
}
