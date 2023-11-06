//
//  RegistrationView.swift
//  beta
//
//  Created by Liu Ziyi on 5/11/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                VStack(spacing: 40) {
                    Text("Join the fun!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    TextField("Name", text: $name)
                        .padding(.horizontal)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1.0)
                                .frame(width: 352, height: 44)
                                .foregroundStyle(Color.theme.gray)
                        }
                    
                    TextField("Email", text: $email)
                        .padding(.horizontal)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1.0)
                                .frame(width: 352, height: 44)
                                .foregroundStyle(Color.theme.gray)
                        }
                    
                    SecureField("Password", text: $password)
                        .padding(.horizontal)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1.0)
                                .frame(width: 352, height: 44)
                                .foregroundStyle(Color.theme.gray)
                        }
                    
                    Button {
                        // To Do
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 352, height: 50)
                            
                            Text("Join!:)")
                                .foregroundStyle(Color.white)
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.top)
                }
                
                HStack {
                    Text("Or join with")
                }
                .padding(.vertical, 50)
                
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
            .padding(.horizontal)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
