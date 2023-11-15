//
//  Paypal.swift
//  DesignPatters
//
//  Created by Josias Piña on 30/10/23.
//

import Foundation

class Paypal: PaymentTemplate {
    func initialize() {
        print("Inicializar pago con Paypal")
    }

    func startPayment() {
        print("Alinieando el pago con los servidores de Paypal")
    }

    func finishPayment() {
        print("Finalizando el pago con el servidor de paypal")
    }
}
