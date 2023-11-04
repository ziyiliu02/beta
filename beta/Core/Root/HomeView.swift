//
//  HomeView.swift
//  beta
//
//  Created by Liu Ziyi on 3/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.theme.yellow
                .ignoresSafeArea()
            
            Text("Cherrypick")
                .font(.custom("PermanentMarker-Regular", size: 34))
        }
        .foregroundStyle(Color.white)
    }
    
    /*
    init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print("-- \(fontName)")
            }
        }
    }
     */
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
