//
//  PaymentTemplate.swift
//  DesignPatters
//
//  Created by Josias Piña on 30/10/23.
//

import Foundation

protocol PaymentTemplate {
    func initialize()
    func startPayment()
    func finishPayment()
}

extension PaymentTemplate {
    func makePayment() {
        initialize()
        startPayment()
        finishPayment()
    }
}
