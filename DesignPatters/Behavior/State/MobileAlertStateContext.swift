//
//  MobileAlertStateContext.swift
//  DesignPatters
//
//  Created by Josias Piña on 27/10/23.
//

import Foundation

class MobileAlertStateContext {
    var currentState: MobileAlertState = Sound()

    func setState(state: MobileAlertState) {
        currentState = state
    }

    func alert() {
        currentState.alert(context: self)
    }
}
