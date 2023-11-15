//
//  TerminalExpression.swift
//  DesignPatters
//
//  Created by Josias Piña on 30/10/23.
//

import Foundation

class TerminalExpression: Expression {
    var text: String

    init(text: String) {
        self.text = text
    }

    func interpret(context: String) -> Bool {
        if context.contains(text) {
            return true
        } else {
            return false
        }
    }
}
