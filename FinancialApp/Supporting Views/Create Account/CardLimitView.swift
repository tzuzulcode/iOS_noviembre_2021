//
//  CardLimitView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 13/12/21.
//

import SwiftUI

struct CardLimitView: View {
    @State var firstName = "Credit Limit"
    var body: some View {
        VStack{
            HStack(alignment: .center, spacing: 0){
                Text("Credit Limit")
                    .customFont(.custom(.bold, 14))
                    .foregroundColor(.basePrussianBlue)
                TextField("Credit Limit",text: $firstName)
                    .multilineTextAlignment(.trailing)
                    .customFont(.custom(.medium, 14))
                    .padding(.trailing,0)
            }.padding(.horizontal,0)
        }.frame(height:40)
            .padding(.top,10)
    }
}

struct CardLimitView_Previews: PreviewProvider {
    static var previews: some View {
        CardLimitView()
    }
}
