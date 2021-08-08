//
//  ContentView.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/4/21.
//

import SwiftUI

struct ContentView: View {
    @State private var navBarHidden: Bool = true
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        TabView {
            HomeView(navBarHidden: $navBarHidden)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            NewAndHotView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("New & 🔥")
                }
                .tag(1)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(2)
            
            DownloadView()
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("Download")
                }
                .tag(3)
            
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
