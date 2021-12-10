//
//  TransactionItemView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 10/12/21.
//

import SwiftUI

struct TransactionItemView: View {
    var body: some View {
        ZStack{
            RoundedBackgroundView()
            HStack{
                HStack{
                    Image("icon-card")
                    VStack(alignment:.leading){
                        Text("Payment")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                        HStack(spacing:3){
                            Text("Payment from")
                                .customFont(.custom(.medium, 14))
                                
                            Text("Tzuzul")
                                .customFont(.custom(.bold, 14))
                        }
                    }
                }
                Spacer()
                VStack(alignment:.trailing){
                    Text("-50.68")
                        .customFont(.custom(.bold, 20))
                        .foregroundColor(.baseGreen)
                    Text("Aug 26")
                        .customFont(.custom(.medium, 14))
                }
            }.foregroundColor(.baseHokiBlue)
                .padding(.horizontal,15)
                .frame(height:80)
        }
    }
}

struct TransactionItemView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItemView().previewLayout(.fixed(width: 600, height: 80))
    }
}
