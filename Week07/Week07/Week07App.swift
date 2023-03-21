//
//  Week07App.swift
//  Week07
//
//  Created by Henry Chen on 3/21/23.
//

import SwiftUI

@main
struct Week07App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
