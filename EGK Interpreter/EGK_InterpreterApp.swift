//
//  EGK_InterpreterApp.swift
//  EGK Interpreter
//
//  Created by Caroline Davis on 8/27/21.
//

import SwiftUI

@main
struct EGK_InterpreterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
