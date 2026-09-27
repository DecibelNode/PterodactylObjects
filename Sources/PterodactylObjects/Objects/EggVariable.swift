//
//  EggVariable.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 26/9/26.
//

struct EggVariable: Codable {
    static let object = "egg_variable"
    
    var name: String
    var description: String
    var envVariable: String
    var defaultValue: String
    var serverValue: String
    var isEditable: Bool
    var rules: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case description
        case envVariable = "env_variable"
        case defaultValue = "default_value"
        case serverValue = "server_value"
        case isEditable = "is_editable"
        case rules
    }
}
