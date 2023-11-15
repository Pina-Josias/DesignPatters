//
//  OperAdapter.swift
//  DesignPatters
//
//  Created by Josias Piña on 7/11/23.
//

import Foundation

class OperAdapter: OperationTarget {
    let adapter: OperationAdapter

    init(adapter: OperationAdapter) {
        self.adapter = adapter
    }

    var getSum: String {
        return String(self.adapter.sum())
    }
}
