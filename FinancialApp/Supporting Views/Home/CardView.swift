//
//  CardView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 08/12/21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack{
            HStack(spacing:-116){
                Image("left-card")
                    .renderingMode(.template)
                    .foregroundColor(.basePrussianBlue)
                Image("right-card")
                    .renderingMode(.template)
                    .foregroundColor(.basePrussianBlue)
                    .opacity(0.95)
            }
            VStack{
                HStack{
                    Image("checkmark")
                    VStack{
                        Text("$99,999")
                            .customFont(.custom(.bold, 20))
                        Text("Available balance")
                            .customFont(.custom(.ultralight, 10))
                        
                    }.foregroundColor(.white)
                    Spacer()
                    Image("visa-logo")
                }
                HStack{
                    //Numero de tarjeta
                }
                HStack{
                    //Datos de tarjeta
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView().previewLayout(.fixed(width: 300, height: 180))
    }
}
