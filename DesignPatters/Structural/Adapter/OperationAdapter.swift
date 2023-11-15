//
//  OperationAdapter.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class OperationAdapter {
    var numA: Int
    var numB: Int

    init(numA: Int, numB: Int) {
        self.numA = numA
        self.numB = numB
    }

    func sum() -> Int {
        return numA + numB
    }
}
