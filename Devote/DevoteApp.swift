//
//  DevoteApp.swift
//  Devote
//
//  Created by Massa Antonio on 30/08/21.
//

import SwiftUI

@main
struct DevoteApp: App {
    let persistenceController = PersistenceController.shared

	@AppStorage("isDarkMode") var isDarkMode: Bool = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
				.preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}