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
            
            Text("Cherrypick Beta")
                .fontWeight(.bold)
        }
        .foregroundStyle(Color.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
