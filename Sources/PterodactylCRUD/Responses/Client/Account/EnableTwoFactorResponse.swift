//
//  Enable2FAResponse.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 27/9/26.
//

struct EnableTwoFactorResponse: Codable {
    let object: String // "recovery_tokens"
    let attributes: Attributes
    
    struct Attributes: Codable {
        var tokens: [String]
    }
}
