//
//  User.swift
//  beta
//
//  Created by Liu Ziyi on 7/12/23.
//

import Foundation

struct User: Identifiable, Codable {
    
    let id: String
    let name: String
    let email: String
    var profileImageUrl: String? = nil
    var bio: String? = nil 
    
}
