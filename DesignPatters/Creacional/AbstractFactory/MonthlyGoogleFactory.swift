//
//  MonthlyGoogleFactory.swift
//  DesignPatters
//
//  Created by Josias Piña on 22/10/23.
//

import Foundation

class MonthlyGoogleFactory: AbstractFactory {
    func createPayment() -> PaymentAF {
        return GooglePaymentAF()
    }

    func createMethod() -> Method {
        return MonthlyMethod()
    }
}
