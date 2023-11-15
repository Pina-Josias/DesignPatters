//
//  Context.swift
//  DesignPatters
//
//  Created by Josias Piña on 30/10/23.
//

import Foundation

class Context {
    var strategyTextFormatter: StrategyTextFormat

    init(strategyTextFormatter: StrategyTextFormat) {
        self.strategyTextFormatter = strategyTextFormatter
    }

    func publishText(text: String) {
        strategyTextFormatter.format(text: text)
    }
}
