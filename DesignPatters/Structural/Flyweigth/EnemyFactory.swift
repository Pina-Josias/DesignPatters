//
//  EnemyFactory.swift
//  DesignPatters
//
//  Created by Josias Piña on 13/11/23.
//

import Foundation

class EnemyFactory {
    private var enemies = [String: Enemy]()

    func getEnemy(type: String) -> Enemy {
        var enemy: Enemy
        if enemies[type] != nil {
            enemy = enemies[type]!
        } else {
            switch type {
            case "Private":
                print("Soldado creado")
                enemy = Soldier()
            case "Detective":
                print("Detective creado")
                enemy = Detective()
            default:
                enemy = Detective()
            }
            enemies[type] = enemy
        }
        return enemy
    }
}
