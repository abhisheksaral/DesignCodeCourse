//
//  ContentView.swift
//  Shared
//
//  Created by Abhishek Saral on 7/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        #if os(iOS)
        SideBar()
        #else
        SideBar()
            .frame(minWidth: 900, minHeight: 600)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
