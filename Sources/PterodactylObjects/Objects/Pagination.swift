//
//  Pagination.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 26/9/26.
//

struct Pagination: Codable {
    static let object = "pagination"
    
    var total: Int
    var count: Int
    var perPage: Int
    var currentPage: Int
    var totalPages: Int
    var links: [String: Links]
    
    struct Links: Codable {
        var previous: String?
        var next: String?
    }
}
