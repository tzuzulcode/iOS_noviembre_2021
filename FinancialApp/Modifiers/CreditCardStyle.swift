//
//  CreditCardStyle.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 13/12/21.
//

import SwiftUI

struct CreditCardStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 75, height: 80)
            .background(.white)
            .cornerRadius(10)
            .buttonStyle(PlainButtonStyle())
    }
}
