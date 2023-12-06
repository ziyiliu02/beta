//
//  OnboardingView.swift
//  beta
//
//  Created by Liu Ziyi on 6/12/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var selectedViewIndex = 0
    
    var body: some View {
        TabView(selection: $selectedViewIndex) {
            
            // Welcome View
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
                        
                        LargeButton(text: "Join!:)", color: Color.theme.yellow) {
                            selectedViewIndex = 2
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                        
                        NavigationLink {
                            LoginView()
                                .navigationBarBackButtonHidden(true)
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
                .tag(0)
            
            LoginView()
                .tag(1)
            
            RegistrationView()
                .tag(2)
        }
//        .tabViewStyle(.page)
        .tabViewStyle(.page(indexDisplayMode: .never))
        .ignoresSafeArea()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
