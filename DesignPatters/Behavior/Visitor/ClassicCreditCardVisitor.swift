//
//  ClassicCreditCardVisitor.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class ClassicCreditCardVisitor: CreditCardVisitor {
    func flightOffer(flightOffer: FlightOffer) {
        print("Discount 5% for Flights using Classic Card")
    }

    func gasOffer(gasOffer: GasOffer) {
        print("Discount 3% with Classic Card")
    }
}
