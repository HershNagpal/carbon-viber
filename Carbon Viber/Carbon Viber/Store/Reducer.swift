//
//  Reducer.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import Foundation

typealias Reducer = (_ state: AppState, _ action: Action) -> AppState

func reducer (_ state: AppState, _ action: Action) -> AppState {
    var state = state
    switch action {
    case _ as PlayMedia:
        state.songPlaying = true
    case _ as PauseMedia:
        state.songPlaying = false
    case let action as SetLibraryPermission:
        state.libraryPermissionGranted = action.value
    default:
        break
    }
    return state
}
