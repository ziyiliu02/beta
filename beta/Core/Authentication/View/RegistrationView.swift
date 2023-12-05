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
    @StateObject var viewModel = RegistrationViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Join the fun! 🙂")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundStyle(Color.red)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
            }
            
            TextField("Name", text: $viewModel.name)
                .modifier(AuthTextFieldModifier())
            
            TextField("Email", text: $viewModel.email)
                .autocapitalization(.none)
                .modifier(AuthTextFieldModifier())
            
            SecureField("Password", text: $viewModel.password)
                .autocapitalization(.none)
                .modifier(AuthTextFieldModifier())
            
            LargeButton(text: "Join! :)", color: Color.white) {
                Task { try await viewModel.createUser() }
            }
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
