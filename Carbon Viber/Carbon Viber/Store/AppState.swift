//
//  State.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import Foundation
import MusicKit

struct AppState {
    var songPlaying: Bool = false
    var libraryPermissionGranted: MusicAuthorization.Status = .notDetermined
}


