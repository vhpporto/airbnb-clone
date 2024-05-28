//
//  Listning.swift
//  airbnb
//
//  Created by Vitor Porto on 21/05/24.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerId: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOFGuests: Int
    let numberOfBeds: Int
    let pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let imagesURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    let rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "door.left.hand.open"
        }
    }
    
    var subTitle: String {
        switch self {
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "door.left.hand.open"
        }
    }
    
    
    var id: Int { return self.rawValue}
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv : return "Tv"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
            
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv : return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
            
        }
    }
    
    var id: Int { return self.rawValue}
}


enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "townHouse"
        case .villa: return "Villa"
        }
    }
    
    var id: Int { return self.rawValue }
}
