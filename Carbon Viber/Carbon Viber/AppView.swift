//
//  ContentView.swift
//  Carbon Viber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import SwiftUI

struct AppView: View {
    @EnvironmentObject var store: Store
    
    struct Props {
        
    }
    
    private func map(_ state: AppState) -> Props {
        return Props()
    }
    
    var body: some View {
        let props = map(store.appState)
        StartupPage()
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        let store = Store(reducer: reducer)
        AppView().environmentObject(store)
    }
}
