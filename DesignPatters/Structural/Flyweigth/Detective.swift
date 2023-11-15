//
//  Detective.swift
//  DesignPatters
//
//  Created by Josias Piña on 13/11/23.
//

import Foundation

class Detective: Enemy {
    let LIFE = 1000
    var weapon: String = ""

    func setWeapon(weapon: String) {
        self.weapon = weapon
        print("Arma ha sido creada")
    }

    func lifePoints() {
        print("la vida de un detective es de \(LIFE)")
    }
}
