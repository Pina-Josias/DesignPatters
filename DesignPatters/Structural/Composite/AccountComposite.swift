//
//  AccountComposite.swift
//  DesignPatters
//
//  Created by Josias Piña on 9/11/23.
//

import Foundation

class AccountComposite: AccountComponent {
    var childAccounts = [AccountComponent]()

    func addAccount(account: AccountComponent) {
        childAccounts.append(account)
    }

    func removeAccount(account: AccountComposite) {}

    func showAccountName() {
        for child in childAccounts {
            child.showAccountName()
        }
    }
}
