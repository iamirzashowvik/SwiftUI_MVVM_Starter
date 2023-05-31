// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let getProducts = try? JSONDecoder().decode(GetProducts.self, from: jsonData)

import Foundation

// MARK: - GetProducts
class GetProducts: Codable {
    var result: Result?
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
    }
    
   
    
    
    // MARK: - Result
    class Result: Codable {
        let id: String?
        let name: String?
        let slug: String?
        let availability: Bool?
        let metaTitle: String?
        let metaTags: [String]?
        let metaDescription: String?
        let bannerImage: String?
        let user: String?
        let cuisines: String?
        let data: [Datum]?
        let type: String?
        let hub: String?
        let showGroups: Bool?
        let estimatedDeliveryTime: String?
        let isOpen: Bool?
        let isClosed: Bool?
        let rating: Rating?
        let showRating: Bool?
        let showReview: Bool?
        let voucher: [JSONAny]?
        let group: [Group]?
        
        enum CodingKeys: String, CodingKey {
            case id = "_id"
            case name = "name"
            case slug = "slug"
            case availability = "availability"
            case metaTitle = "meta_title"
            case metaTags = "meta_tags"
            case metaDescription = "meta_description"
            case bannerImage = "banner_image"
            case user = "user"
            case cuisines = "cuisines"
            case data = "data"
            case type = "type"
            case hub = "hub"
            case showGroups = "show_groups"
            case estimatedDeliveryTime = "estimated_delivery_time"
            case isOpen = "is_open"
            case isClosed = "is_closed"
            case rating = "rating"
            case showRating = "showRating"
            case showReview = "showReview"
            case voucher = "voucher"
            case group = "group"
        }
        
        init(id: String?, name: String?, slug: String?, availability: Bool?, metaTitle: String?, metaTags: [String]?, metaDescription: String?, bannerImage: String?, user: String?, cuisines: String?, data: [Datum]?, type: String?, hub: String?, showGroups: Bool?, estimatedDeliveryTime: String?, isOpen: Bool?, isClosed: Bool?, rating: Rating?, showRating: Bool?, showReview: Bool?, voucher: [JSONAny]?, group: [Group]?) {
            self.id = id
            self.name = name
            self.slug = slug
            self.availability = availability
            self.metaTitle = metaTitle
            self.metaTags = metaTags
            self.metaDescription = metaDescription
            self.bannerImage = bannerImage
            self.user = user
            self.cuisines = cuisines
            self.data = data
            self.type = type
            self.hub = hub
            self.showGroups = showGroups
            self.estimatedDeliveryTime = estimatedDeliveryTime
            self.isOpen = isOpen
            self.isClosed = isClosed
            self.rating = rating
            self.showRating = showRating
            self.showReview = showReview
            self.voucher = voucher
            self.group = group
        }
    }
    
    // MARK: - Datum
    class Datum: Codable {
        let category: String?
        let categoryid: String?
        let categoryImage: String?
        let items: [DatumItem]?
        let sortingOrder: Int?
        
        enum CodingKeys: String, CodingKey {
            case category = "category"
            case categoryid = "category_id"
            case categoryImage = "category_image"
            case items = "items"
            case sortingOrder = "sorting_order"
        }
        
        init(category: String?, categoryid: String?, categoryImage: String?, items: [DatumItem]?, sortingOrder: Int?) {
            self.category = category
            self.categoryid = categoryid
            self.categoryImage = categoryImage
            self.items = items
            self.sortingOrder = sortingOrder
        }
    }
    
    // MARK: - DatumItem
    class DatumItem: Codable {
        let images: [String]?
        let addons: Addons?
        let price: Price?
        let metaTags: [JSONAny]?
        let name: String?
        let availability: String?
        let details: String?
        let slug: String?
        let metaTitle: String?
        let isInv: Bool?
        let metaDescription: String?
        let objectId: String?
        let id: String?
        
        enum CodingKeys: String, CodingKey {
            case images = "images"
            case addons = "addons"
            case price = "price"
            case metaTags = "meta_tags"
            case name = "name"
            case availability = "availability"
            case details = "details"
            case slug = "slug"
            case metaTitle = "meta_title"
            case isInv = "is_inv"
            case metaDescription = "meta_description"
            case objectId = "objectId"
            case id = "_id"
        }
        
        init(images: [String]?, addons: Addons?, price: Price?, metaTags: [JSONAny]?, name: String?, availability: String?, details: String?, slug: String?, metaTitle: String?, isInv: Bool?, metaDescription: String?, objectId: String?, id: String?) {
            self.images = images
            self.addons = addons
            self.price = price
            self.metaTags = metaTags
            self.name = name
            self.availability = availability
            self.details = details
            self.slug = slug
            self.metaTitle = metaTitle
            self.isInv = isInv
            self.metaDescription = metaDescription
            self.objectId = objectId
            self.id = id
        }
    }
    
    // MARK: - Addons
    class Addons: Codable {
        let title: String?
        let min: Int?
        let max: Int?
        let items: [AddonsItem]?
        
        enum CodingKeys: String, CodingKey {
            case title = "title"
            case min = "min"
            case max = "max"
            case items = "items"
        }
        
        init(title: String?, min: Int?, max: Int?, items: [AddonsItem]?) {
            self.title = title
            self.min = min
            self.max = max
            self.items = items
        }
    }
    
    // MARK: - AddonsItem
    class AddonsItem: Codable {
        let name: String?
        let price: Int?
        let id: String?
        
        enum CodingKeys: String, CodingKey {
            case name = "name"
            case price = "price"
            case id = "id"
        }
        
        init(name: String?, price: Int?, id: String?) {
            self.name = name
            self.price = price
            self.id = id
        }
    }
    
    // MARK: - Price
    class Price: Codable {
        let type: String?
        let amount: Int?
        let discount: Discount?
        let variants: [Variant]?
        
        enum CodingKeys: String, CodingKey {
            case type = "type"
            case amount = "amount"
            case discount = "discount"
            case variants = "variants"
        }
        
        init(type: String?, amount: Int?, discount: Discount?, variants: [Variant]?) {
            self.type = type
            self.amount = amount
            self.discount = discount
            self.variants = variants
        }
    }
    
    // MARK: - Discount
    class Discount: Codable {
        let type: String?
        let amount: Int?
        let validity: JSONNull?
        
        enum CodingKeys: String, CodingKey {
            case type = "type"
            case amount = "amount"
            case validity = "validity"
        }
        
        init(type: String?, amount: Int?, validity: JSONNull?) {
            self.type = type
            self.amount = amount
            self.validity = validity
        }
    }
    
    // MARK: - Variant
    class Variant: Codable {
        let items: [VariantItem]?
        let title: String?
        let min: Int?
        let max: Int?
        let id: String?
        
        enum CodingKeys: String, CodingKey {
            case items = "items"
            case title = "title"
            case min = "min"
            case max = "max"
            case id = "id"
        }
        
        init(items: [VariantItem]?, title: String?, min: Int?, max: Int?, id: String?) {
            self.items = items
            self.title = title
            self.min = min
            self.max = max
            self.id = id
        }
    }
    
    // MARK: - VariantItem
    class VariantItem: Codable {
        let name: String?
        let price: Int?
        let availability: Availability?
        let id: String?
        let total: Int?
        
        enum CodingKeys: String, CodingKey {
            case name = "name"
            case price = "price"
            case availability = "availability"
            case id = "id"
            case total = "total"
        }
        
        init(name: String?, price: Int?, availability: Availability?, id: String?, total: Int?) {
            self.name = name
            self.price = price
            self.availability = availability
            self.id = id
            self.total = total
        }
    }
    
    enum Availability: Codable {
        case bool(Bool)
        case string(String)
        
        init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let x = try? container.decode(Bool.self) {
                self = .bool(x)
                return
            }
            if let x = try? container.decode(String.self) {
                self = .string(x)
                return
            }
            throw DecodingError.typeMismatch(Availability.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Availability"))
        }
        
        func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .bool(let x):
                try container.encode(x)
            case .string(let x):
                try container.encode(x)
            }
        }
    }
    
    // MARK: - Group
    class Group: Codable {
        let name: String?
        let slug: String?
        let createdAt: String?
        let updatedAt: String?
        let bannerImage: String?
        let objectId: String?
        let isClosed: Bool?
        let isOpen: Bool?
        
        enum CodingKeys: String, CodingKey {
            case name = "name"
            case slug = "slug"
            case createdAt = "createdAt"
            case updatedAt = "updatedAt"
            case bannerImage = "banner_image"
            case objectId = "objectId"
            case isClosed = "is_closed"
            case isOpen = "is_open"
        }
        
        init(name: String?, slug: String?, createdAt: String?, updatedAt: String?, bannerImage: String?, objectId: String?, isClosed: Bool?, isOpen: Bool?) {
            self.name = name
            self.slug = slug
            self.createdAt = createdAt
            self.updatedAt = updatedAt
            self.bannerImage = bannerImage
            self.objectId = objectId
            self.isClosed = isClosed
            self.isOpen = isOpen
        }
    }
    
    // MARK: - Rating
    class Rating: Codable {
        let value: Double?
        let count: Int?
        
        enum CodingKeys: String, CodingKey {
            case value = "value"
            case count = "count"
        }
        
        init(value: Double?, count: Int?) {
            self.value = value
            self.count = count
        }
    }
    
    // MARK: - Encode/decode helpers
    
    class JSONNull: Codable, Hashable {
        
        public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
            return true
        }
        
        public var hashValue: Int {
            return 0
        }
        
        public init() {}
        
        public required init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if !container.decodeNil() {
                throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
            }
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeNil()
        }
    }
    
    class JSONCodingKey: CodingKey {
        let key: String
        
        required init?(intValue: Int) {
            return nil
        }
        
        required init?(stringValue: String) {
            key = stringValue
        }
        
        var intValue: Int? {
            return nil
        }
        
        var stringValue: String {
            return key
        }
    }
    
    class JSONAny: Codable {
        
        let value: Any
        
        static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
            let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
            return DecodingError.typeMismatch(JSONAny.self, context)
        }
        
        static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
            let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
            return EncodingError.invalidValue(value, context)
        }
        
        static func decode(from container: SingleValueDecodingContainer) throws -> Any {
            if let value = try? container.decode(Bool.self) {
                return value
            }
            if let value = try? container.decode(Int64.self) {
                return value
            }
            if let value = try? container.decode(Double.self) {
                return value
            }
            if let value = try? container.decode(String.self) {
                return value
            }
            if container.decodeNil() {
                return JSONNull()
            }
            throw decodingError(forCodingPath: container.codingPath)
        }
        
        static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
            if let value = try? container.decode(Bool.self) {
                return value
            }
            if let value = try? container.decode(Int64.self) {
                return value
            }
            if let value = try? container.decode(Double.self) {
                return value
            }
            if let value = try? container.decode(String.self) {
                return value
            }
            if let value = try? container.decodeNil() {
                if value {
                    return JSONNull()
                }
            }
            if var container = try? container.nestedUnkeyedContainer() {
                return try decodeArray(from: &container)
            }
            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
                return try decodeDictionary(from: &container)
            }
            throw decodingError(forCodingPath: container.codingPath)
        }
        
        static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
            if let value = try? container.decode(Bool.self, forKey: key) {
                return value
            }
            if let value = try? container.decode(Int64.self, forKey: key) {
                return value
            }
            if let value = try? container.decode(Double.self, forKey: key) {
                return value
            }
            if let value = try? container.decode(String.self, forKey: key) {
                return value
            }
            if let value = try? container.decodeNil(forKey: key) {
                if value {
                    return JSONNull()
                }
            }
            if var container = try? container.nestedUnkeyedContainer(forKey: key) {
                return try decodeArray(from: &container)
            }
            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
                return try decodeDictionary(from: &container)
            }
            throw decodingError(forCodingPath: container.codingPath)
        }
        
        static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
            var arr: [Any] = []
            while !container.isAtEnd {
                let value = try decode(from: &container)
                arr.append(value)
            }
            return arr
        }
        
        static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
            var dict = [String: Any]()
            for key in container.allKeys {
                let value = try decode(from: &container, forKey: key)
                dict[key.stringValue] = value
            }
            return dict
        }
        
        static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
            for value in array {
                if let value = value as? Bool {
                    try container.encode(value)
                } else if let value = value as? Int64 {
                    try container.encode(value)
                } else if let value = value as? Double {
                    try container.encode(value)
                } else if let value = value as? String {
                    try container.encode(value)
                } else if value is JSONNull {
                    try container.encodeNil()
                } else if let value = value as? [Any] {
                    var container = container.nestedUnkeyedContainer()
                    try encode(to: &container, array: value)
                } else if let value = value as? [String: Any] {
                    var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                    try encode(to: &container, dictionary: value)
                } else {
                    throw encodingError(forValue: value, codingPath: container.codingPath)
                }
            }
        }
        
        static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
            for (key, value) in dictionary {
                let key = JSONCodingKey(stringValue: key)!
                if let value = value as? Bool {
                    try container.encode(value, forKey: key)
                } else if let value = value as? Int64 {
                    try container.encode(value, forKey: key)
                } else if let value = value as? Double {
                    try container.encode(value, forKey: key)
                } else if let value = value as? String {
                    try container.encode(value, forKey: key)
                } else if value is JSONNull {
                    try container.encodeNil(forKey: key)
                } else if let value = value as? [Any] {
                    var container = container.nestedUnkeyedContainer(forKey: key)
                    try encode(to: &container, array: value)
                } else if let value = value as? [String: Any] {
                    var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                    try encode(to: &container, dictionary: value)
                } else {
                    throw encodingError(forValue: value, codingPath: container.codingPath)
                }
            }
        }
        
        static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
        
        public required init(from decoder: Decoder) throws {
            if var arrayContainer = try? decoder.unkeyedContainer() {
                self.value = try JSONAny.decodeArray(from: &arrayContainer)
            } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
                self.value = try JSONAny.decodeDictionary(from: &container)
            } else {
                let container = try decoder.singleValueContainer()
                self.value = try JSONAny.decode(from: container)
            }
        }
        
        public func encode(to encoder: Encoder) throws {
            if let arr = self.value as? [Any] {
                var container = encoder.unkeyedContainer()
                try JSONAny.encode(to: &container, array: arr)
            } else if let dict = self.value as? [String: Any] {
                var container = encoder.container(keyedBy: JSONCodingKey.self)
                try JSONAny.encode(to: &container, dictionary: dict)
            } else {
                var container = encoder.singleValueContainer()
                try JSONAny.encode(to: &container, value: self.value)
            }
        }
    }
}
