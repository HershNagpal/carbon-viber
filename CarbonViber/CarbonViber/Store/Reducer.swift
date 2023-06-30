//
//  Reducer.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import Foundation

typealias Reducer = (_ state: State, _ action: Action) -> State

func reducer (_ state: State, _ action: Action) -> State {
    var state = state
    switch action {
    case _ as PlayMedia:
        state.songPlaying = true
    case _ as PauseMedia:
        state.songPlaying = false
    default:
        break
    }
    return state
}
