//
//  HomeHeaderView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 06/12/21.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack(alignment:.center){
            Image("avatar")
            Spacer()
            VStack(alignment: .leading, spacing: -8){
                Text("Hi, Tzuzul Code")
                    .customFont(.custom(.bold, 24))
                Text("Welcome to your favorite app")
                    .customFont(.custom(.demibold, 16))
            }.foregroundColor(.basePrussianBlue)
            
        }.padding(.horizontal,20)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView().previewLayout(.fixed(width: 600, height: 80))
    }
}
