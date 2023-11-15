//
//  Subject.swift
//  DesignPatters
//
//  Created by Josias Piña on 26/10/23.
//

import Foundation

protocol Subject {
    func attach(obs: Observer)
    func dettach(obs: Observer)
    func notifyUpdate(trafficLight: TraficLight)
}
