//
//  LargeButton.swift
//  beta
//
//  Created by Liu Ziyi on 6/11/23.
//

import SwiftUI

struct LargeButton: View {
    
    var text: String
    var color: Color
    
    var body: some View {
        Button {
            // To Do
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 352, height: 50)
                
                Text(text)
                    .foregroundStyle(color)
                    .fontWeight(.bold)
            }
        }
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeButton(text: "Cherrypick", color: Color.white)
    }
}
