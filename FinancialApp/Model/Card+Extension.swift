//
//  Card+Extension.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 16/12/21.
//

import Foundation
extension Card{
    public var cardExpDate:String{
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/YY"
        return formatter.string(from: self.expirationDate ?? Date())
    }
}
