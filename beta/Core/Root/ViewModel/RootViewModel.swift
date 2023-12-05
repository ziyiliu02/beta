//
//  RootViewModel.swift
//  beta
//
//  Created by Liu Ziyi on 10/11/23.
//

import Foundation
import Combine
import Firebase

class RootViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}
