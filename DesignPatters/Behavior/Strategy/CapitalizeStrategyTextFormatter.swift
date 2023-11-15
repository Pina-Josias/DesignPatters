//
//  CapitalizeStrategyTextFormatter.swift
//  DesignPatters
//
//  Created by Josias Piña on 30/10/23.
//

import Foundation

class CapitalizeStrategyTextFormatter: StrategyTextFormat {
    func format(text: String) {
        print(text.uppercased())
    }
}
