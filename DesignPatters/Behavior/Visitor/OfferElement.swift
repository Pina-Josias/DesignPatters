//
//  OfferElement.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

protocol OfferElement {
    func accept(visitor: CreditCardVisitor)
}
