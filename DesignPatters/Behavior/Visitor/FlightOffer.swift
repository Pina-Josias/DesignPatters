//
//  FlightOffer.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class FlightOffer: OfferElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.flightOffer(flightOffer: self)
    }
}
