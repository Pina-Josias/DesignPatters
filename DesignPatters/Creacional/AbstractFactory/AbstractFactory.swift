//
//  AbstractFactory.swift
//  DesignPatters
//
//  Created by Josias Piña on 22/10/23.
//

import Foundation

protocol AbstractFactory {
    func createPayment() -> PaymentAF
    func createMethod() -> Method
}
