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
        //UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        
    }
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    ForEach(accounts){ account in
                        NavigationLink(destination: AccountHomeView(account: account)) {
                            CardListRow(account: account)
                        }.padding(.vertical, 10)
                    }
                }
            }
            .navigationTitle("Accounts")
            .sheet(isPresented: $showCreateAccountScreen){
                CreateAccountView().environmentObject(self.model)
            }
            .navigationBarItems(trailing:
                                    Button(action: {
                self.showCreateAccountScreen.toggle()
            }){
                Text("New Account")
            }
            )
        }
    }
}

struct AccountListView_Previews: PreviewProvider {
    static var previews: some View {
        AccountListView()
            .environment(\.managedObjectContext, MockAccountPreviewService.moc)
    }
}
