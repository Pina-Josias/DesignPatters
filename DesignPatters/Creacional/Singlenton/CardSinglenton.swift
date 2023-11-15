//
//  CardSinglenton.swift
//  DesignPatters
//
//  Created by Josias Piña on 24/10/23.
//

import Foundation

class CardSinglenton {
    static var shared = CardSinglenton()

    private init() {}

    func doSomething() {
        print("haciendo el trabajo de singlenton")
    }
}
