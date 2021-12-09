//
//  AccountSummaryView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 09/12/21.
//

import SwiftUI

struct AccountSummaryView: View {
    private var type = "creditcard"
    var body: some View {
        VStack{
            if type=="creditcard"{
                creditcard
            }
        }
    }
}

struct AccountSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryView().previewLayout(.fixed(width: 600, height: 310))
    }
}

private extension AccountSummaryView{
    var creditcard: some View{
        VStack{
            VStack{
                HStack{
                    Text("Account").customFont(.custom(.bold, 20))
                    Spacer()
                    Text("**** **** **** 2864")
                        .customFont(.custom(.medium, 15))
                        .foregroundColor(.gray)
                }
                Divider()
            }
            HStack{
                VStack{
                    Text("Credit utilized")
                        .customFont(.custom(.medium, 12))
                        .foregroundColor(.gray)
                    Text("$9999").customFont(.custom(.bold, 20))
                }
                Spacer()
                VStack{
                    Text("Available credit limit")
                        .customFont(.custom(.medium, 12))
                        .foregroundColor(.gray)
                    Text("$999,999").customFont(.custom(.bold, 20))
                }
            }
            ZStack(alignment: .leading){
                Rectangle()
                    .fill(Color.baseMediumGray)
                    .cornerRadius(4.5)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height:10)
                Rectangle()
                    .fill(Color.basePrussianBlue)
                    .cornerRadius(4.5)
                    .frame(width:120,height: 10)
            }.padding(.bottom)
            Divider()
            List{
                //El reto
            }
        }.padding(.horizontal,10)
            .background(Color.baseWhite)
            .foregroundColor(.basePrussianBlue)
    }
}
