//
//  CreditCardCollection.swift
//  DesignPatters
//
//  Created by Josias Piña on 25/10/23.
//

import Foundation

class CreditCardsCollection {
    var items = [CreditCard]()

    func append(_ item: CreditCard) {
        self.items.append(item)
    }
}

extension CreditCardsCollection: Sequence {
    func makeIterator() -> CreditCardIterator {
        return CreditCardIterator(cards: self)
    }
}
