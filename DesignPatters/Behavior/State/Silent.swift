//
//  Silent.swift
//  DesignPatters
//
//  Created by Josias Piña on 27/10/23.
//

import Foundation

class Silent: MobileAlertState {
    func alert(context: MobileAlertStateContext) {
        print("Esta en silencio")
    }
}
