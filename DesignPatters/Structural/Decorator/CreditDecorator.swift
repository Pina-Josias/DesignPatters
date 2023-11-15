//
//  CreditDecorator.swift
//  DesignPatters
//
//  Created by Josias Piña on 9/11/23.
//

import Foundation

class CreditDecorator: CreditComponent {
    var decorated: CreditComponent

    init(decorated: CreditComponent) {
        self.decorated = decorated
    }

    func showCredit() {
        self.decorated.showCredit()
    }
}
