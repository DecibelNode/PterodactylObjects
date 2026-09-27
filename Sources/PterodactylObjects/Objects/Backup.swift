//
//  Backup.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 26/9/26.
//

import Foundation

struct Backup: Codable {
    static let objtype = "backup"
    
    var object: Obj // must be "backup"
    var attributes: Attributes
    
    enum Obj: String, Codable {
        case backup
    }
    
    struct Attributes: Codable {
        var uuid: UUID // uuid
        var name: String
        var ignoredFiles: [String]
        var checksum: String?
        var bytes: Int
        var isLocked: Bool
        var isSuccessful: Bool // true if in progress
        var createdAt: Date
        var completedAt: Date?
    }
}
