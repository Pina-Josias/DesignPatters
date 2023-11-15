//
//  CreditMarketFacade.swift
//  DesignPatters
//
//  Created by Josias Piña on 9/11/23.
//

import Foundation

class CreditMarketFacade {
    var black = BlackModule()
    var gold = GoldModule()
    var silver = SilverModule()

    func showCreditBlack() {
        black.showCredit()
    }

    func showCreditGold() {
        gold.showCredit()
    }

    func showCreditSilver() {
        silver.showCredit()
    }
}
