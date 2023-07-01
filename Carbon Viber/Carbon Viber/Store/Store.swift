//
//  Store.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import Foundation

class Store: ObservableObject {
    let reducer: Reducer
    @Published var appState: AppState
    
    init(reducer: @escaping Reducer, state: AppState = AppState()) {
        self.reducer = reducer
        self.appState = state
    }
    
    func dispatch(action: Action) {
        appState = reducer(appState, action)
    }
}
