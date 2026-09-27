//
//  Server.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 27/9/26.
//

import Foundation

struct Server: Codable {
    static let object = "server"
    
    var serverOwner: Bool
    var identifier: String
    var internalID: Int
    var uuid: UUID
    var name: String
    var node: String
    var description: String
    var invocation: String
    var dockerImage: String
    var eggFeatures: [String]
    var status: String?
    var isSuspended: Bool
    var isInstalling: Bool
    var isTransferring: Bool
    
    var sftpDetails: SFTP
    
    struct SFTP: Codable {
        var ip: String
        var port: Int
    }
    
    struct FeatureLims: Codable {
        var databases: Int
        var allocations: Int
        var backups: Int
    }
    
    struct Limits: Codable {
        var memory: Int
        var swap: Int
        var disk: Int
        var io: Int
        var cpu: Int
        var threads: String?
        var oomDisabled: Bool
        
        enum CodingKeys: String, CodingKey {
            case memory
            case swap
            case disk
            case io
            case cpu
            case threads
            case oomDisabled = "oom_disabled"
        }
    }
    
    
}
