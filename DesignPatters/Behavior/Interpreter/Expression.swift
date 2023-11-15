//
//  Expression.swift
//  DesignPatters
//
//  Created by Josias Piña on 30/10/23.
//

import Foundation

protocol Expression {
    func interpret(context: String) -> Bool
}
