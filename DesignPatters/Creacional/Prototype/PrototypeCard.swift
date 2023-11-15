//
//  PrototypeCard.swift
//  DesignPatters
//
//  Created by Josias Piña on 23/10/23.
//

import Foundation

class PrototypeCard: NSCopying {
    var cardNumber = 0
    var cardType = ""

    required init(cardNumber: Int = 0, cardType: String = "") {
        self.cardNumber = cardNumber
        self.cardType = cardType
    }

    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self)
            .init()
        prototype.cardNumber = cardNumber
        prototype.cardType = cardType
        print("Valores de clase PrototypeCard han sido clonados")
        return prototype
    }
}
