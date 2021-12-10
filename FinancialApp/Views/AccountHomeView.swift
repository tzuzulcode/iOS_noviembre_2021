//
//  AccountHomeView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 10/12/21.
//

import SwiftUI

struct AccountHomeView: View {
    var body: some View {
        ZStack{
            Color(.baseLightWhite)
                .edgesIgnoringSafeArea(.all)
                
            ScrollView{
                VStack{
                    HomeHeaderView()
                    CardView()
                    SubMenuView()
                    Divider()
                    AccountSummaryView()
                                    }
            }
        }
    }
}

struct AccountHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHomeView()
    }
}
