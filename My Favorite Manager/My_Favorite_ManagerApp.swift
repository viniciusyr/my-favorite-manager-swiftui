//
//  My_Favorite_ManagerApp.swift
//  My Favorite Manager
//
//  Created by Vinicius Rodrigues on 11/05/22.
//

import SwiftUI

@main
struct My_Favorite_ManagerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
