//
//  FinancialAppApp.swift
//  FinancialApp
//
//  Created by Tzuzul Rosas on 06/12/21.
//

import SwiftUI

@main
struct FinancialAppApp: App {
    
    @StateObject private var viewModel = CreateAccountViewModel()
    let manager = CoreDataManager.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
                .environment(\.managedObjectContext, manager.context)
        }
    }
}
