//
//  CareTaker.swift
//  DesignPatters
//
//  Created by Josias Piña on 26/10/23.
//

import Foundation

class CareTaker {
    private var states = [ArticleMementor]()

    func addMemento(memento: ArticleMementor) {
        states.append(memento)
    }

    func getMemento(index: Int) -> ArticleMementor {
        return states[index]
    }
}
