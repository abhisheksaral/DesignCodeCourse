//
//  ContentView.swift
//  Shared
//
//  Created by Abhishek Saral on 7/10/21.
//

import SwiftUI

struct ContentView: View {
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    #endif
    
    
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        if horizontalSizeClass == .compact {
            CoursesView()
        } else {
            CoursesView()
        }
                
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
