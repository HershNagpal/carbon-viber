//
//  CurrentSongPage.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import SwiftUI

struct CurrentSongPage: View {
    @EnvironmentObject var store: Store
    
    struct Props {
        let songPlaying: Bool
        let onPause: () -> Void
        let onPlay: () -> Void
    }
    
    private func map(state: State) -> Props {
        Props(
            songPlaying: state.songPlaying,
            onPause: { store.dispatch(action: PauseMedia()) },
            onPlay: { store.dispatch(action: PlayMedia()) }
        )
    }
    
    var body: some View {
        let props = map(state: store.state)
        
        VStack {
            if props.songPlaying {
                Text("Song Playing")
            } else {
                Text("Song Paused")
            }
            
            if props.songPlaying {
                Button("Pause") {
                    props.onPause()
                }
            } else {
                Button("Play") {
                    props.onPlay()
                }
            }
        }
        
    }
}

struct CurrentSongPage_Previews: PreviewProvider {
    static var previews: some View {
        let store = Store(reducer: reducer)
        CurrentSongPage().environmentObject(store)
    }
}
