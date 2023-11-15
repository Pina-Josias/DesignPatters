//
//  Soldier.swift
//  DesignPatters
//
//  Created by Josias Piña on 13/11/23.
//

import Foundation

class Soldier: Enemy {
    let LIFE = 200
    var weapon: String = ""

    func setWeapon(weapon: String) {
        self.weapon = weapon
        print("Arma ha sido creada")
    }

    func lifePoints() {
        print("la vida de un soldado es de \(LIFE)")
    }
}
