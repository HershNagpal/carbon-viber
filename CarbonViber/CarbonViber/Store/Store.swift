//
//  Store.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import Foundation

class Store: ObservableObject {
    let reducer: Reducer
    @Published var state: State
    
    init(reducer: @escaping Reducer, state: State = State()) {
        self.reducer = reducer
        self.state = state
    }
    
    func dispatch(action: Action) {
        state = reducer(state, action)
    }
}
