//
//  Car.swift
//  DesignPatters
//
//  Created by Josias Piña on 26/10/23.
//

import Foundation

class Car: Observer {
    func update(trafficLight: TraficLight) {
        if trafficLight.status as AnyObject === "CAR_RED" as AnyObject {
            print("Semaforo coche rojo -> no puede pasar")
        } else {
            print("Semaforo coche verde -> puede pasar")
        }
    }
}
