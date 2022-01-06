//
//  AccountTypeView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 13/12/21.
//

import SwiftUI

struct AccountTypeView: View {
    @EnvironmentObject var model: CreateAccountViewModel
    var body: some View {
        HStack{
            Button(action:{
                model.selectedAccountType = 1
            }){
                HStack{
                    ZStack{
                        Circle()
                            .fill(model.selectedAccountType == 1 ? Color.basePrussianBlue : Color.baseMediumGray)
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
            Button(action:{
                model.selectedAccountType = 0
            }){
                HStack{
                    ZStack{
                        Circle()
                            .fill(model.selectedAccountType == 0 ? Color.basePrussianBlue : Color.baseMediumGray)
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
        AccountTypeView().environmentObject(CreateAccountViewModel())
    }
}
