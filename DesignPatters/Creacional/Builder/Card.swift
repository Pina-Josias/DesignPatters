//
//  Card.swift
//  DesignPatters
//
//  Created by Josias Piña on 22/10/23.
//

import Foundation

class Card {
    private var cardType: String = ""
    private var number: String = ""
    private var expired: Int = 0

    func showCard() {
        print("Tarjeta \(cardType) - \(number) - \(expired)")
    }

    class CardBuilder {
        private var innerCard = Card()

        func cardType(cardType: String) -> CardBuilder {
            innerCard.cardType = cardType
            return self
        }

        func number(number: String) -> CardBuilder {
            innerCard.number = number
            return self
        }

        func expires(expires: Int) -> CardBuilder {
            innerCard.expired = expires
            return self
        }

        func build() -> Card {
            return innerCard
        }
    }
}
