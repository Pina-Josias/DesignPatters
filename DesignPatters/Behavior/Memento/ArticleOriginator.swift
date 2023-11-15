//
//  ArticleOriginator.swift
//  DesignPatters
//
//  Created by Josias Piña on 26/10/23.
//

import Foundation

struct ArticleOriginator {
    var id: Int
    var title: String
    var text: String

    func createMemento() -> ArticleMementor {
        let memento = ArticleMementor(id: id, title: title, text: text)
        return memento
    }

    mutating func restore(memento: ArticleMementor) {
        self.id = memento.id
        self.title = memento.title
        self.text = memento.text
    }
}
