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
                HStack { // Step 1

                    HStack { // Step 2

                        Text("****")

                            .customFont(.custom(.black, 17))

                        Text("****").customFont(.custom(.black, 17))

                        Text("****").customFont(.custom(.black, 17))

                        Text("9999").customFont(.custom(.black, 20))

                    }

                    Spacer() // Step 3

                }.padding(.top, 15)

                Spacer() // Step 4
                HStack { // Step 1

                VStack(alignment: .leading) { // Step 2

                        Text("CARD HOLDER")

                            .customFont(.custom(.bold, 11))

                            .foregroundColor(Color.baseRockBlue)

                        Text("Tzuzul Code").customFont(.custom(.black, 16))

                    }

                    Spacer() // Step 3

                    VStack(alignment: .leading) { // Step 4

                        Text("EXPIRES")

                            .customFont(.custom(.bold, 11))

                            .foregroundColor(Color.baseRockBlue)

                        Text("08/22").customFont(.custom(.black, 16))

                    }

                    VStack(alignment: .leading) { // Step 5

                        Text("CVV")

                            .customFont(.custom(.bold, 11))

                            .foregroundColor(Color.baseRockBlue)

                        Text("999").customFont(.custom(.black, 16))

                    }

                }
            }.padding(10)
                .foregroundColor(.baseWhite)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView().previewLayout(.fixed(width: 300, height: 180))
    }
}
