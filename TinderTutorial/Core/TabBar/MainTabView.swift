//
//  MainTabView.swift
//  TinderTutorial
//
//  Created by Ilona on 6/12/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Swiping view")
                .tabItem {Image(systemName: "flame")}
                .tag(0)
            
            Text("Search view")
                .tabItem {Image(systemName: "magnifyingglass")}
                .tag(1)
            
            // custom icon
            Text("Inbox view")
                .tabItem {Image(.messageIcon)
                        .renderingMode(.template)
                        .imageScale(.large)
                        
                }
                .tag(2)
            
            Text("Profile view")
                .tabItem {Image(systemName: "person")}
                .tag(3)
            
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}
