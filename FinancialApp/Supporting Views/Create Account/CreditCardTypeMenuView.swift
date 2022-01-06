//
//  CreditCardTypeMenuView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 13/12/21.
//

import SwiftUI

struct CreditCardTypeMenuView: View {
    
    @EnvironmentObject var model: CreateAccountViewModel
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 3){
                Text("SELECT A CARD TYPE")
                    .customFont(.custom(.bold, 18))
                    .foregroundColor(.basePrussianBlue)
                    .padding(.leading,10)
                Divider()
            }.padding(.top,15)
            HStack{
                ForEach(0..<model.selectorLogos.count){index in
                    Button(action: {
                        model.selectedCardType = index
                    }){
                        VStack{
                            Image(self.model.selectorLogos[index])
                            if(model.selectedCardType==index){
                                Image("checkmark-selector")
                            }else{
                                Image("checkmark-outline-selector")
                            }
                            
                            
                                
                        }
                    }.buttonStyle(CreditCardStyle())
                }
            }.padding(.top,20)
        }.background(.clear)
    }
}

struct CreditCardTypeMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardTypeMenuView().environmentObject(CreateAccountViewModel())
    }
}
