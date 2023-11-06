//
//  BioAuthButton.swift
//  beta
//
//  Created by Liu Ziyi on 5/11/23.
//

import SwiftUI

struct BioAuthButton: View {
    
    var text: String
    var image: String?
    var showImage = true
    
    var body: some View {
        HStack{
            Text(text)
            
            Spacer()
            
            if showImage {
                Image(systemName: image ?? "person.fill")
            }
        }
        .padding(.horizontal)
        .frame(width: 352, height: 50)
        .background(Color.black)
        .cornerRadius(10)
        .foregroundStyle(Color.white)
        
    }
}

struct BioAuthButton_Previews: PreviewProvider {
    static var previews: some View {
        BioAuthButton(text: "Login with Face Recognition", image: "faceid")
    }
}
