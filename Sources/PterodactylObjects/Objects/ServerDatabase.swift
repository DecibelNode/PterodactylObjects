//
//  Server.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 27/9/26.
//

struct ServerDatabase: Codable {
    static let object = "server_database"
    
    var id: String
    var name: String
    var username: String
    var connectionsFrom: String
    var maxConnections: Int
    var host: Host
    var relationships: Relationships
    
    struct Host: Codable {
        var address: String
        var port: Int
    }
    
    struct Relationships: Codable {
        struct Password: Codable {
            var object: Obj
            var attributes: Attributes
            
            struct Attributes: Codable {
                var password: String
            }
            
            enum Obj: String, Codable {
                case database_password
            }
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case username
        case connectionsFrom = "connections_from"
        case maxConnections = "max_connections"
        case host
        case relationships
    }
}
