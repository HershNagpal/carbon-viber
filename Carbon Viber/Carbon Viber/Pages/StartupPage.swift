//
//  StartupPage.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import SwiftUI
import MusicKit

struct StartupPage: View {
    
    @EnvironmentObject var store: Store
    
    struct Props {
        let libraryPermissionGranted: MusicAuthorization.Status
        let onSetLibraryPermission: (MusicAuthorization.Status) -> Void
    }
    
    private func map(_ state: AppState) -> Props {
        Props(
            libraryPermissionGranted: state.libraryPermissionGranted,
            onSetLibraryPermission: { store.dispatch(action: SetLibraryPermission(value: $0)) }
        )
    }
    
    var body: some View {
        let props = map(store.appState)
        
        if (props.libraryPermissionGranted == .notDetermined) {
            Button("Request Library Permission") {
                Task {
                    let status = await MusicAuthorization.request()
                    switch status {
                    case .authorized:
                        props.onSetLibraryPermission(status)
                    case .restricted:
                        break
                    case .notDetermined:
                        break
                    case .denied:
                        props.onSetLibraryPermission(status)
                    @unknown default:
                        props.onSetLibraryPermission(status)
                    }
                }
            }
        } else if (props.libraryPermissionGranted == .authorized) {
            
        } else if (props.libraryPermissionGranted == .denied) {
            Text("Go to settings and allow permissions to use the app")
        }
    }
}

struct StartupPage_Previews: PreviewProvider {
    static var previews: some View {
        let store = Store(reducer: reducer)
        StartupPage().environmentObject(store)
    }
}
