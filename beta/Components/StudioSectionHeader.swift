//
//  StudioSectionHeader.swift
//  beta
//
//  Created by Liu Ziyi on 8/11/23.
//

import SwiftUI

struct StudioSectionHeader: View {
    
    var icon: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: "plus")
            Image(systemName: "chevron.right")
        }
    }
}

struct StudioSectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        StudioSectionHeader(icon: "lightbulb", title: "Idea Factory")
    }
}
