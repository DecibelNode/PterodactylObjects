//
//  EnableTwoFactor.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 27/9/26.
//

struct EnableTwoFactor: Codable { // expects a 200 and 400
    var code: String // 6 digit totp code
}
