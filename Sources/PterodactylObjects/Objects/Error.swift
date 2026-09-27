//
//  Error.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 27/9/26.
//

struct Error: Codable {
    var errors: [IndividualError]
}

struct IndividualError: Codable {
    var code: String
    var status: String
    var detail: String
    var meta: Meta?
    
    struct Meta: Codable {
        var sourceField: String
        var rule: String
        
        enum CodingKeys: String, CodingKey {
            case sourceField = "source_field"
            case rule
        }
    }
}
