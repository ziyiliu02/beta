//
//  RegistrationView.swift
//  beta
//
//  Created by Liu Ziyi on 5/11/23.
//

import SwiftUI

struct RegistrationView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                
                RegistrationForm()
                
                HStack {
                    Text("Or join with")
                }
                .padding(.vertical, 50)
                
                RegistrationBioAuthButtons()
                
            }
            .padding(.horizontal)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

struct RegistrationForm: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Join the fun! 🙂")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Name", text: $name)
                .modifier(AuthTextFieldModifier())
            
            TextField("Email", text: $email)
                .modifier(AuthTextFieldModifier())
            
            SecureField("Password", text: $password)
                .modifier(AuthTextFieldModifier())
            
            LargeButton(text: "Join! :)", color: Color.white)
            .padding(.top)
        }
    }
}

struct RegistrationBioAuthButtons: View {
    var body: some View {
        VStack(spacing: 20) {
            BioAuthButton(text: "Touch ID", image: "touchid")
            BioAuthButton(text: "Face Recognition", image: "faceid")
            
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
        }
    }
}
