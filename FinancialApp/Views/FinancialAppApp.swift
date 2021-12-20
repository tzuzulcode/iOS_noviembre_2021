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
    
    /*
    Crear algo
     CoreDataManager.shared.context.perform { // (1)

         let nuevaCuenta = Account(context:CoreDataManager.shared.context) // (2)

         nuevaCuenta.firstName = "Tzuzul"
         

         CoreDataManager.shared.save() // (3)

     }
    
    Leer un item
    
    var item: Account?

    CoreDataManager.shared.context.perform {

        let request: NSFetchRequest<Account> = Account.fetchRequest()

        request.predicate = NSPredicate(format: "acctNumber = %@","1")

        request.fetchLimit = 1

        

        item = try? CoreDataManager.shared.context.fetch(request)

    }
    
     
     Leer varios registros
    var entities: [Card] = []

    CoreDataManager.shared.context.perform {

        let request: NSFetchRequest<Account> = Account.fetchRequest()

        if let items = try?CoreDataManager.shared.context.fetch(request) {

            for item in items {

                entities.append(item)

            }

        }

    }
    
    Actualizar un registro
    
    CoreDataManager.shared.context.perform { // (1)

        let request: NSFetchRequest<Account> = Account.fetchRequest() // (2)

        request.predicate = NSPredicate(format: "id = %@", id)       // (3)

        let item = try? CoreDataManager.shared.context.fetch(request).first         // (4)

        item.firsteName = "Ruby" // (5)

        CoreDataManager.shared.save() // (6)

    }
     
     ELiminar un registro
    CoreDataManager.shared.context.perform { // (1)

        let request: NSFetchRequest<Account> = Account.fetchRequest() // (2)

        request.predicate = NSPredicate(format: "id = %@", id)        // (3)
        

        if let item = try?CoreDataManager.shared.context.fetch(request).first {       // (4)

            CoreDataManager.shared.context.delete(item) // (5)

        }

    }
     */
     
}
