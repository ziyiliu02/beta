//
//  LoginView.swift
//  beta
//
//  Created by Liu Ziyi on 6/11/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                VStack(spacing: 40) {
                    Text("Welcome back! 🥳")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
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
                            
                            Text("Enter!:)")
                                .foregroundStyle(Color.white)
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.top)
                }
                
                HStack {
                    Text("Or login with")
                }
                .padding(.vertical, 50)
                
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
            .padding(.horizontal)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
