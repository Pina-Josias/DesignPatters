//
//  FileCreditCardVisitior.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

protocol CreditCardVisitor {
    func gasOffer(gasOffer: GasOffer)
    func flightOffer(flightOffer: FlightOffer)
}
