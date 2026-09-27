//
//  Collection.swift
//  PterodactylObjects
//
//  Created by Flaky le Flaker (Mineturtlee) on 26/9/26.
//

struct Collection: Codable {
    var object: Obj
    var data: [Any]
    var meta: Meta

    nonisolated(unsafe) private static let typeRegistry: [String: Codable.Type] = [
        Allocation.object: Allocation.self,
        EggVariable.object: EggVariable.self,
        Server.object: Server.self,
        APIKey.object: APIKey.self,
        ServerDatabase.object: ServerDatabase.self,
        FileObject.object: FileObject.self,
        Pagination.object: Pagination.self,
        Backup.objtype: Backup.self,
        SignedURL.object: SignedURL.self
    ]

    enum CodingKeys: String, CodingKey {
        case object, data, meta
    }

    enum Obj: String, Codable { case list }

    struct Meta: Codable {
        var pagination: Pagination
    }

    private struct Discriminator: Decodable {
        let object: String
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        object = try container.decode(Obj.self, forKey: .object)
        meta = try container.decode(Meta.self, forKey: .meta)

        var arrayContainer = try container.nestedUnkeyedContainer(forKey: .data)
        var results: [Any] = []

        while !arrayContainer.isAtEnd {
            let elementDecoder = try arrayContainer.superDecoder()

            let tag = try Discriminator(from: elementDecoder).object

            if let type = Self.typeRegistry[tag] {
                let value = try type.init(from: elementDecoder)
                results.append(value)
            } else {
                print("what is this object type: \(tag)")
            }
        }
        data = results
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(object, forKey: .object)
        try container.encode(meta, forKey: .meta)

        var arrayContainer = container.nestedUnkeyedContainer(forKey: .data)
        for item in data {
            if let e = item as? Encodable {
                try arrayContainer.encode(AnyEncodable(e))
            }
        }
    }
}

struct Empty: Decodable { init(from d: Decoder) throws { _ = try d.singleValueContainer() } }

struct AnyEncodable: Encodable {
    let value: Encodable
    init(_ value: Encodable) { self.value = value }
    func encode(to encoder: Encoder) throws { try value.encode(to: encoder) }
}
