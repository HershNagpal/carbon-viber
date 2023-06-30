//
//  CarbonViberApp.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import SwiftUI

@main
struct CarbonViberApp: App {
    let persistenceController = PersistenceController.shared
    let store: Store = Store(reducer: reducer)
    
    var body: some Scene {
        WindowGroup {
            CurrentSongPage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
