//
//  GasOffer.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class GasOffer: OfferElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.gasOffer(gasOffer: self)
    }
}
