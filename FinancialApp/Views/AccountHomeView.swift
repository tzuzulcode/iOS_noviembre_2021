//
//  AccountHomeView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 10/12/21.
//

import SwiftUI

struct AccountHomeView: View {
    @ObservedObject var account:Account
    var body: some View {
        ZStack{
            Color(.baseLightWhite)
                .edgesIgnoringSafeArea(.all)
                
            ScrollView{
                VStack{
                    HomeHeaderView(account:account) // Add account
                    CardListRow(account: account)
                    SubMenuView()
                    Divider()
                    AccountSummaryView(account:account)
                }
            }
        }
    }
}

struct AccountHomeView_Previews: PreviewProvider {
    static var previews: some View {
        //Crear un mock
        AccountHomeView(account:MockAccountPreviewService.creditAccount)
    }
}
