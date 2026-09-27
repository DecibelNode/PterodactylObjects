//
//  Allocation.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 26/9/26.
//

struct Allocation: Codable {
    static let object = "allocation"
    
    var id: Int
    var ip: String
    var ipAlias: String?
    var port: Int
    var notes: String?
    var isDefault: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case ip
        case ipAlias = "ip_alias"
        case port
        case notes
        case isDefault = "is_default"
    }
}
