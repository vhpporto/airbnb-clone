//
//  ListingItemView.swift
//  airbnb
//
//  Created by Vitor Porto on 18/05/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.title)")
                        .tint(.primary)
                        .fontWeight(.semibold)
                        .font(.headline)
                    
                    Text("\(listing.address)")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 5) {
                        Text("\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                            .tint(.primary)
                        
                        Text("night")
                            .tint(.primary)
                        
                    }
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                        .tint(.primary)
                    Text(String(format: "%.2f", listing.rating))
                        .tint(.primary)
                }
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
