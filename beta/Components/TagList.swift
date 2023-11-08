//
//  TagList.swift
//  beta
//
//  Created by Liu Ziyi on 8/11/23.
//

import SwiftUI

struct TagList: View {
    var body: some View {
        HStack {
            ForEach(1 ..< 4, id: \.self) { tag in
                HStack {
                    Text("tag\(tag)")
                    
                    Image(systemName: "multiply")
                }
                .frame(height: 35)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(Color.theme.gray)
                }
            }
            
            Image(systemName: "plus")
        }
    }
}

struct TagList_Previews: PreviewProvider {
    static var previews: some View {
        TagList()
    }
}
