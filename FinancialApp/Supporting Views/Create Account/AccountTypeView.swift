//
//  AccountTypeView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 13/12/21.
//

import SwiftUI

struct AccountTypeView: View {
    var body: some View {
        HStack{
            Button(action:{}){
                HStack{
                    ZStack{
                        Circle()
                            .fill(Color.basePrussianBlue)
                            .frame(width:18,height:18)
                        Image("checkmark-selector")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width:10,height:8)
                            .foregroundColor(.white)
                    }
                    Text("Credit Card")
                        .customFont(.custom(.medium, 14))
                        .foregroundColor(.baseDustyGray)
                }
            }
            Button(action:{}){
                HStack{
                    ZStack{
                        Circle()
                            .fill(Color.basePrussianBlue)
                            .frame(width:18,height:18)
                        Image("checkmark-selector")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width:10,height:8)
                            .foregroundColor(.white)
                    }
                    Text("Debit Card")
                        .customFont(.custom(.medium, 14))
                        .foregroundColor(.baseDustyGray)
                }
            }
        }
    }
}

struct AccountTypeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountTypeView()
    }
}
