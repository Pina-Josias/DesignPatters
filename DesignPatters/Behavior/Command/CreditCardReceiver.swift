//
//  CreditCardReceiver.swift
//  DesignPatters
//
//  Created by Josias Piña on 24/10/23.
//

import Foundation

class CreditCardReceiver {
    func sendPinNumberToCustomer() {
        print("Pin Number has been sended to client")
    }
    
    func sendSmsToCustomerActive() {
        print("Sms sended to client with card activation info")
    }
    
    func activate() {
        print("Card has been activated")
    }
    
    func desactivate() {
        print("Car has been deactivate")
    }
    
    func sendSmsToCustomerDeactivate() {
        print("Sms sended to cliente with card deactivation info")
    }
}
