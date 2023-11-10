//
//  RegistrationViewModel.swift
//  beta
//
//  Created by Liu Ziyi on 9/11/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    @MainActor
    func createUser() async throws {
//        guard !name.isEmpty, !email.isEmpty, !password.isEmpty else {
//            errorMessage = "Please fill in all fields."
//            return
//        }
        
        guard validate() else {
            return
        }
        
        try await AuthService.shared.createUser(withEmail: email, password: password, name: name)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !name.isEmpty, !email.isEmpty, !password.isEmpty else {
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
