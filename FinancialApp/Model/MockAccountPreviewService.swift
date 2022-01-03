//
//  MockAccountPreviewService.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 23/12/21.
//

import Foundation
struct MockAccountPreviewService{
    static let moc = CoreDataManager.shared.context
    static var visaCard:Card = {
        let card = Card(context: moc)
        card.color = "#555555"

        card.cvv = "999"

        card.dateCreated = Date()

        card.expirationDate = Date()

        card.logo = "visa-logo"

        return card
    }()
    static var amexCard:Card = {
        let card = Card(context: moc)
        card.color = "#000000"

        card.cvv = "999"

        card.dateCreated = Date()

        card.expirationDate = Date()

        card.logo = "am-logo"

        return card
    }()

    static var masterCard:Card = {
        let card = Card(context: moc)
        card.color = "#000000"

        card.cvv = "999"

        card.dateCreated = Date()

        card.expirationDate = Date()

        card.logo = "mc-logo"

        return card
    }()

    static var debitAccount:Account = {
        let account = Account(context: moc)
        account.acctNumber = "99999"

        account.balance = 9000.00

        account.firstName = "Test"

        account.lastName = "Last"

        account.type = "Checking"

        account.card = visaCard

        return account
    }()
    
    static var creditAccount: Account = {

        let account = Account(context: moc)

        account.acctNumber = "99999"

        account.balance = 99000.00

        account.firstName = "Test"

        account.lastName = "Last"

        account.type = "Credit Card"

        

        account.card = amexCard

        

        return account

    }()
    
    
}
