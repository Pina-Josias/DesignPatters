//
//  PaymentMethodClient.swift
//  DesignPatters
//
//  Created by Josias Piña on 22/10/23.
//

import Foundation

class PaymentMethodClient {
    static func codigoCliente(factory: AbstractFactory) {
        let payment = factory.createPayment()
        let method = factory.createMethod()

        payment.doPayment()
        method.calculatePayment()
    }
}
