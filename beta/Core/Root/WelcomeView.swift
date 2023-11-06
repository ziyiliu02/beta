//
//  WelcomeView.swift
//  beta
//
//  Created by Liu Ziyi on 5/11/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.theme.yellow
                
                VStack {
                    
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                    
                    Text("Cherrypick")
                        .font(.custom("PermanentMarker-Regular", size: 34))
                    
                    Spacer()
                    
                    LargeButton(text: "Join!:)", color: Color.theme.yellow)
                    .padding(.horizontal)
                    .padding(.bottom)
                    
                    NavigationLink {
                        LoginView()
                    } label: {
                        HStack {
                            Text("Already have an account?")
                            
                            Text("Login")
                                .fontWeight(.bold)
                        }
                    }
                    .font(.footnote)
                    .padding(.bottom, 100)

                }
            }
            .foregroundStyle(Color.white)
            .ignoresSafeArea()

        }
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

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
