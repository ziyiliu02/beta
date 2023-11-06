//
//  LoginView.swift
//  beta
//
//  Created by Liu Ziyi on 6/11/23.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                
                LoginForm()
                
                HStack {
                    Text("Or login with")
                }
                .padding(.vertical, 50)
                
                LoginBioAuthButtons()
                
            }
            .padding(.horizontal)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct LoginForm: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Welcome back! 🥳")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Email", text: $email)
                .modifier(AuthTextFieldModifier())
            
            SecureField("Password", text: $password)
                .modifier(AuthTextFieldModifier())
            
            LargeButton(text: "Enter! :)", color: Color.white)
            .padding(.top)
        }
    }
}

struct LoginBioAuthButtons: View {
    var body: some View {
        VStack(spacing: 20) {
            BioAuthButton(text: "Touch ID", image: "touchid")
            BioAuthButton(text: "Face Recognition", image: "faceid")
            
            NavigationLink {
                RegistrationView()
            } label: {
                HStack {
                    Text("Don't have an account?")
                    
                    Text("Join")
                        .fontWeight(.bold)
                }
            }
            .font(.footnote)
        }
    }
}
