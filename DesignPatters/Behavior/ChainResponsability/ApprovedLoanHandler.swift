//
//  ApprovedLoanHandler.swift
//  DesignPatters
//
//  Created by Josias Piña on 24/10/23.
//

import Foundation

protocol ApprovedLoanHandler {
    func setNext(handler: ApprovedLoanHandler)
    func getNext() -> ApprovedLoanHandler
    func creditCardRequest(totalLoan: Int)
}
