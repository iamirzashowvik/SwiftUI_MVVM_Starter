
import Foundation

// MARK: - HomepageSection
struct HomepageSection: Codable {
    var result: [Result]?
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
    }
    
    
    // MARK: - Result
    struct Result: Codable {
        let id: String?
        let name: String?
        let items: [Item]?
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case name = "name"
            case items = "items"
        }
    }
    
    // MARK: - Item
    struct Item: Codable, Identifiable {
        let id: String
        let name: String?
        let cuisines: String?
        let type: String?
        let operatingHours: [Double]?
        let availability: Bool?
        let isHub: Bool?
        let bannerImage: String?
        let slug: String?
        let hubId: String?
        let isOpen: Bool?
        let isClosed: Bool?
        let estimatedDeliveryTime: String?
        let rating: Rating?
        let showRating: Bool?
        let showReview: Bool?
        let voucherTitle: String?
        let voucherSubTitle: String?
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case name = "name"
            case cuisines = "cuisines"
            case type = "type"
            case operatingHours = "operating_hours"
            case availability = "availability"
            case isHub = "is_hub"
            case bannerImage = "banner_image"
            case slug = "slug"
            case hubId = "hubId"
            case isOpen = "is_open"
            case isClosed = "is_closed"
            case estimatedDeliveryTime = "estimated_delivery_time"
            case rating = "rating"
            case showRating = "showRating"
            case showReview = "showReview"
            case voucherTitle = "voucher_title"
            case voucherSubTitle = "voucher_sub_title"
        }
        init(id: String, name: String?, cuisines: String?, type: String?, operatingHours: [Double]?, availability: Bool?, isHub: Bool?, bannerImage: String?, slug: String?, hubId: String?, isOpen: Bool?, isClosed: Bool?, estimatedDeliveryTime: String?, rating: Rating?, showRating: Bool?, showReview: Bool?, voucherTitle: String?, voucherSubTitle: String?) {
            self.id = id
            self.name = name
            self.cuisines = cuisines
            self.type = type
            self.operatingHours = operatingHours
            self.availability = availability
            self.isHub = isHub
            self.bannerImage = bannerImage
            self.slug = slug
            self.hubId = hubId
            self.isOpen = isOpen
            self.isClosed = isClosed
            self.estimatedDeliveryTime = estimatedDeliveryTime
            self.rating = rating
            self.showRating = showRating
            self.showReview = showReview
            self.voucherTitle = voucherTitle
            self.voucherSubTitle = voucherSubTitle
        }
    }
    
    // MARK: - Rating
    struct Rating: Codable {
        let value: Double?
        let count: Int?
        
        enum CodingKeys: String, CodingKey {
            case value = "value"
            case count = "count"
        }
    }
}
