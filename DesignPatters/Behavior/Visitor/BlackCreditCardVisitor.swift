//
//  BlackCreditCardVisitor.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class BlackCreditCardVisitor: CreditCardVisitor {
    func flightOffer(flightOffer: FlightOffer) {
        print("Discount 12% for Flights using Black Card")
    }

    func gasOffer(gasOffer: GasOffer) {
        print("Discount 8% for Gas with Black Card")
    }
}
