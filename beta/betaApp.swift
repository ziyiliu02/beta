//
//  betaApp.swift
//  beta
//
//  Created by Liu Ziyi on 3/11/23.
//

import SwiftUI
import FirebaseCore

@main
struct betaApp: App {
    init() {
        FirebaseApp.configure() 
    }
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}
