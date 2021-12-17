//
//  CreateAccountViewModel.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 17/12/21.
//

import SwiftUI
import CoreData
import Combine


enum AccountType: String{
    case debitcard = "Debit Card"
    case creditcard = "Credit Card"
}

enum CardType:String{
    case americanexpress
    case visa
    case mastercard
}

class CreateAccountViewModel:ObservableObject{
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var limit = ""
    @Published var ccNumber = ""
    @Published var cvv = ""
    @Published var displayExpDate = ""
    @Published var expDate = Date()
    @Published var selectedAccountType = 0
    @Published var selectedCardType = 0
    @Published var selectedCardColorType = 0
    @Published var selectedCardColor: UIColor = .basePrussianBlue
    
    var creditLimit: Float = 0.0
    var selectorLogos = ["mc-logo-selector", "visa-logo-selector", "am-logo-selector"]
    var cardLogos = ["mc-logo-selector", "visa-logo", "am-logo"]
    
    var accountTypes:[String] = [AccountType.debitcard.rawValue,AccountType.creditcard.rawValue]
    
    var colors: [Color] = [.baseEndeavourBlue,
                           .baseHokiBlue,
                           .black,
                           .red,
                           .pink,
                           .purple,
                           .gray]
             
     var uiColors: [UIColor] = [.baseEndeavourBlue,
                              .baseHokiBlue,
                              .black,
                              .red,
                              .systemPink,
                              .purple,
                              .gray]
    
    
    
}


extension CreateAccountViewModel{
    func initAccount(){
        expDate = generateCardExpiration(amount: 4)
        ccNumber = generateCCNumber()
        cvv = generateCVV()
    }
    
    func generateCCNumber()->String {
        let number1 = randomNumberWith(digits: 4)
        let number2 = randomNumberWith(digits: 4)
        let number3 = randomNumberWith(digits: 4)
        let number4 = randomNumberWith(digits: 4)
        
        return "\(number1) \(number2) \(number3) \(number4)"
    }
    
    func generateCVV()->String{
        return "\(randomNumberWith(digits: 3))"
    }
    
    func generateCardExpiration(amount:Int)->Date{
        let currentDate = getCurrentDate()
        var dateComponent = DateComponents()
        
        dateComponent.year = amount
        dateComponent.month = 1
        
        if let futureDate = Calendar.current.date(byAdding: dateComponent, to: currentDate){
            let formatter = DateFormatter()
            formatter.dateFormat = "MM/yy"
            self.displayExpDate = formatter.string(from: futureDate)
            return futureDate
        }
        
        return currentDate
        
    }
    
    
    func getCurrentDate()->Date{
        let calendar = Calendar.current
        let now = Date()
        
        var nowComponents = DateComponents()
        
        nowComponents.year = calendar.component(.year, from: now)
        nowComponents.month = calendar.component(.month, from: now)
        nowComponents.day = calendar.component(.day, from: now)
        nowComponents.timeZone = NSTimeZone.local
        
        
        if let now = calendar.date(from: nowComponents){
            return now
        }
        
        return now
    }
}
