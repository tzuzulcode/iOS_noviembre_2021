//
//  SubMenuView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 09/12/21.
//

import SwiftUI

struct SubMenuView: View {
    var body: some View {
        VStack{
            HStack{
                Text("QUICK SERVICES")
                    .customFont(.custom(.bold, 20))
                    .padding(.bottom,2)
                    .foregroundColor(.basePrussianBlue)
                Spacer()
            }
            Divider().padding(.bottom,10)
            
            HStack{
                Button(action: {}){
                    VStack{
                        Image("icon-send")
                        Text("ADD NEW").customFont(.custom(.demibold, 12))
                    }.frame(width: 75, height: 80)
                        .background(.white)
                        .cornerRadius(10)
                }
                Button(action: {}){
                    VStack{
                        Image("icon-send")
                        Text("LOCATIONS").customFont(.custom(.demibold, 12))
                    }.frame(width: 75, height: 80)
                        .background(.white)
                        .cornerRadius(10)
                }
                Button(action: {}){
                    VStack{
                        Image("icon-send")
                        Text("TRANSACTIONS").customFont(.custom(.demibold, 12))
                    }.frame(width: 75, height: 80)
                        .background(.white)
                        .cornerRadius(10)
                }
                Spacer()
            }.foregroundColor(.basePrussianBlue)
        }.padding(.horizontal,10)
            .background(Color.baseWhite)
    }
}

struct SubMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SubMenuView().previewLayout(.fixed(width: 420, height: 140))
    }
}
