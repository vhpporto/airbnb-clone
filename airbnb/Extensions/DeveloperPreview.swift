//
//  DeveloperPreview.swift
//  airbnb
//
//  Created by Vitor Porto on 21/05/24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Adelar Venecci",
            ownerImageUrl: "img-5",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOFGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 456,
            latitude: 25.456,
            longitude: -80.7850,
            imagesURLs: ["img-1", "img-2", "img-3"],
            address: "124 Main St",
            city: "Chapecó",
            state: "SC",
            title: "Miami Villa",
            rating: 4.87,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony,.laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "img-6",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOFGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 456,
            latitude: 25.456,
            longitude: -80.7850,
            imagesURLs: ["img-3", "img-2", "img-1"],
            address: "124 Main St",
            city: "Xaxim",
            state: "SC",
            title: "Miami Villa",
            rating: 4.87,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony,.laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Pedro Ernesto",
            ownerImageUrl: "img-5",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOFGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 456,
            latitude: 25.456,
            longitude: -80.7850,
            imagesURLs: ["img-3", "img-2", "img-1"],
            address: "124 Main St",
            city: "Xanxerê",
            state: "SC",
            title: "Miami Villa",
            rating: 4.87,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony,.laundry, .tv],
            type: .villa
        )
        
    ]
}
