//
//  ContentView.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 06/12/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model : CreateAccountViewModel
    var body: some View {
        ZStack{
            CreateAccountView()
            
            if model.hasAccounts(){
                //AccountHomeView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CreateAccountViewModel())
    }
}
