//
//  EpisodeCarouselView.swift
//  beta
//
//  Created by Liu Ziyi on 7/11/23.
//

import SwiftUI

struct EpisodeCarouselView: View {
    
    var images = ["hollywood", "disneyland", "netflix", "tokyo", "ultra"]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

struct EpisodeCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeCarouselView()
    }
}
