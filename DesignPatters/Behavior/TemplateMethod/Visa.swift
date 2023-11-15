//
//  Visa.swift
//  DesignPatters
//
//  Created by Josias Piña on 30/10/23.
//

import Foundation

class Visa: PaymentTemplate {
    func initialize() {
        print("Inicializar pago con Visa")
    }

    func startPayment() {
        print("Alinieando el pago con los servidores de Visa")
    }

    func finishPayment() {
        print("Finalizando el pago con el servidor de Visa")
    }
}
