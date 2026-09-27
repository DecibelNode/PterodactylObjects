//
//  APIKey.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 27/9/26.
//

import Foundation

struct APIKey: Codable {
    static let object = "api_key"
    
    var identifier: String
    var description: String
    var allowedIPs: [String]
    var lastUsedAt: Date?
    var createdAt: Date
    
    enum CodingKeys: String, CodingKey {
        case identifier
        case description
        case allowedIPs = "allowed_ips"
        case lastUsedAt = "last_used_at"
        case createdAt = "created_at"
    }
}
