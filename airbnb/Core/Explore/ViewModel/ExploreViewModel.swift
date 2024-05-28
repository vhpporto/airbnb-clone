//
//  ExploreViewModel.swift
//  airbnb
//
//  Created by Vitor Porto on 22/05/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            print(self.listings)
        } catch {
            print("DEBUG: Failed to fetch listings with error \(error.localizedDescription)")
        }
    }
}
