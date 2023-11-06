//
//  MainTabView.swift
//  beta
//
//  Created by Liu Ziyi on 6/11/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            TheatreView()
                .tabItem {
                    Label("Theatre", systemImage: "film")
                }
            
            StudioView()
                .tabItem {
                    Label("Studio", systemImage: "brain")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "face.smiling")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
