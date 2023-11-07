//
//  EpisodeIcon.swift
//  beta
//
//  Created by Liu Ziyi on 7/11/23.
//

import SwiftUI

struct EpisodeIcon: View {
    
    var icon: String
    var number: String
    var title: String
    
    var body: some View {
        VStack(spacing: 2) {
            HStack {
                Image(systemName: icon)
                
                Text(number)
                    .font(.caption)
            }
            
            Text(title)
                .font(.caption)
        }
    }
}

struct EpisodeIcon_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeIcon(icon: "popcorn", number: "4.8", title: "Audience Rating")
    }
}
