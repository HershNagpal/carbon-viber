//
//  StartupPage.swift
//  CarbonViber
//
//  Created by Hersh Nagpal on 6/30/23.
//

import SwiftUI
import MusicKit

struct StartupPage: View {
    var body: some View {
        Text("Yee")
    }
}

struct StartupPage_Previews: PreviewProvider {
    static var previews: some View {
        let store = Store(reducer: reducer)
        StartupPage().environmentObject(store)
    }
}
