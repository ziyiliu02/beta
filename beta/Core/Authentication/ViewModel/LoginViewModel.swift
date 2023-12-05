//
//  LoginViewModel.swift
//  beta
//
//  Created by Liu Ziyi on 5/12/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    @MainActor
    func login() async throws {
        
        guard validate() else {
            return
        }
        
        try await AuthService.shared.login(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !email.isEmpty, !password.isEmpty else {
            errorMessage = "Please fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "The Password must be at least 6 characters long."
            return false
        }
        
        return true
    }
    
}
