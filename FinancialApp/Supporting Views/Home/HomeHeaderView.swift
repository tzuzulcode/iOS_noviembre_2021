//
//  HomeHeaderView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 06/12/21.
//

import SwiftUI

struct HomeHeaderView: View {
    @ObservedObject var account: Account
    var body: some View {
        HStack(alignment:.center){
            Image("avatar")
            Spacer()
            VStack(alignment: .leading, spacing: -8){
                Text("Hi, \(account.firstName.stringValue)")
                    .customFont(.custom(.bold, 24))
                Text("Welcome to your favorite app")
                    .customFont(.custom(.demibold, 16))
            }.foregroundColor(.basePrussianBlue)
            
        }.padding(.horizontal,20)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView(account:MockAccountPreviewService.creditAccount).previewLayout(.fixed(width: 600, height: 80))
    }
}
