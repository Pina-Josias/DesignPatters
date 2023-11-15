//
//  CreditCardIterator.swift
//  DesignPatters
//
//  Created by Josias Piña on 25/10/23.
//

import Foundation

class CreditCardIterator: IteratorProtocol {
    private var position = 0
    let cards: CreditCardsCollection

    init(cards: CreditCardsCollection) {
        self.cards = cards
    }

    func next() -> CreditCard? {
        defer { position += 1 }

        return cards.items.count > position ? cards.items[position] : nil
    }
}
