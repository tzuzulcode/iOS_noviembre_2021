//
//  HomeHeaderView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 06/12/21.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack{
            VStack{
                Text("Hi, Tzuzul Code")
                    .customFont(.custom(.bold, 24))
                Text("Welcome to your favorite app")
            }.foregroundColor(.basePrussianBlue)
        }
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView().previewLayout(.fixed(width: 600, height: 80))
    }
}
