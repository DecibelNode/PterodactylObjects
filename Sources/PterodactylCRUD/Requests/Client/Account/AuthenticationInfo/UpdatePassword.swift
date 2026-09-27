//
//  UpdatePassword.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 27/9/26.
//

struct UpdatePassword: Codable {
    var currentPassword: String
    var password: String
    var passwordConfirmation: String
    
    enum CodingKeys: String, CodingKey {
        case currentPassword = "current_password"
        case password
        case passwordConfirmation = "password_confirmation"
    }
}
