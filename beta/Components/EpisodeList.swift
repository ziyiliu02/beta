//
//  EpisodeList.swift
//  beta
//
//  Created by Liu Ziyi on 7/11/23.
//

import SwiftUI

struct EpisodeList: View {
    
    var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer()
                
                NotificationButton(numberOfNotifications: 1)
                Image(systemName: "chevron.right")
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(1 ..< 5) { episode in
                        VStack {
                            Rectangle()
                                .frame(width: 100, height: 110)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text("Episode \(episode)")
                                .font(.caption)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct EpisodeList_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeList(title: "Social")
    }
}
