//
//  User.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 27/9/26.
//

struct User: Codable {
    let id: Int
    let admin: Bool
    let username: String
    let email: String
    let firstName: String
    let lastName: String
    let language: String
    
    enum CodingKeys: String, CodingKey {
        case id, admin, username, email, language
        case firstName = "first_name"
        case lastName = "last_name"
    }
}
