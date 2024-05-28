//
//  ExploreService.swift
//  airbnb
//
//  Created by Vitor Porto on 22/05/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws  -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
