//
//  Carbon_ViberApp.swift
//  Carbon Viber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import SwiftUI

@main
struct CarbonViberApp: App {
    let store: Store = Store(reducer: reducer)
    
    var body: some Scene {
        WindowGroup {
            AppView()
                .environmentObject(store)
        }
    }
}
