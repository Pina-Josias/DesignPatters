//
//  MessagePublisher.swift
//  DesignPatters
//
//  Created by Josias Piña on 26/10/23.
//

import Foundation

class MessagePublisher: Subject {
    var observers = [Observer]()

    func attach(obs: Observer) {
        observers.append(obs)
    }

    func dettach(obs: Observer) {
        if let index = observers
            .firstIndex(where: { $0 as AnyObject === obs as AnyObject })
        {
            observers.remove(at: index)
        }
    }

    func notifyUpdate(trafficLight: TraficLight) {
        observers.forEach { $0.update(trafficLight: trafficLight) }
    }
}
