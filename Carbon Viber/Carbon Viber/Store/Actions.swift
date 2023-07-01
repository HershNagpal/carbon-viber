//
//  Actions.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import Foundation
import MusicKit

protocol Action { }

struct PauseMedia: Action { }

struct PlayMedia: Action { }

struct SetLibraryPermission: Action { let value: MusicAuthorization.Status }
