//
//  AccountListView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 23/12/21.
//

import SwiftUI

struct AccountListView: View {
    
    @FetchRequest(fetchRequest: Account.accountFetcher)
    var accounts : FetchedResults<Account>
    
    @State var showCreateAccountScreen = false
    let model = CreateAccountViewModel()
    
    init(){
        
    }
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    ForEach(accounts){ account in
                        NavigationLink(destination: AccountHomeView(account: account)) {
                            CardListRow(account: account)
                        }
                    }
                }
            }
        }
    }
}

struct AccountListView_Previews: PreviewProvider {
    static var previews: some View {
        AccountListView()
    }
}
