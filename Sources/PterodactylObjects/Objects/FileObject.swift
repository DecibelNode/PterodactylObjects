//
//  FileObject.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 27/9/26.
//

import Foundation

struct FileObject: Codable {
    static let object = "file_object"
    
    var name: String
    var mode: String
    var modeBits: String // actual unix flags, the above is just readability
    var size: Int
    var isFile: Bool
    var isSymlink: Bool
    var mimeType: String
    var createdAt: Date
    var modifiedAt: Date
    
    enum CodingKeys: String, CodingKey {
        case name
        case mode
        case modeBits = "mode_bits"
        case size
        case isFile = "is_file"
        case isSymlink = "is_symlink"
        case mimeType = "mimetype"
        case createdAt = "created_at"
        case modifiedAt = "modified_at"
    }
}
