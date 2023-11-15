//
//  VisaCardConcreteProtorype.swift
//  DesignPatters
//
//  Created by Josias Piña on 23/10/23.
//

import Foundation

class VisaCardConcreteProtorype: PrototypeCard {
    var cardName = "VISA"

    func copy() -> Any {
        return copy(with: nil)
    }

    override func copy(with zone: NSZone? = nil) -> Any {
        guard let prototype = super.copy(with: zone) as? VisaCardConcreteProtorype else {
            return VisaCardConcreteProtorype()
        }
        prototype.cardName = cardName
        print("Clonado con ViSA")
        return prototype
    }
}
