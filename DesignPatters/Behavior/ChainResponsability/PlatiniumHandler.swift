//
//  PlatiniumHandler.swift
//  DesignPatters
//
//  Created by Josias Piña on 24/10/23.
//

import Foundation

class PlatiniumHandler: ApprovedLoanHandler {
    private var next: ApprovedLoanHandler?

    func setNext(handler: ApprovedLoanHandler) {
        next = handler
    }

    func getNext() -> ApprovedLoanHandler {
        return next!
    }

    func creditCardRequest(totalLoan: Int) {
        if totalLoan > 10000 && totalLoan <= 50000 {
            print("Esta solicitud de tarjeta es PlatiniumHanlder")
        } else {
            next?.creditCardRequest(totalLoan: totalLoan)
        }
    }
}
