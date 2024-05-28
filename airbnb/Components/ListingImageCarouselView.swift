//
//  ListingImageCarouselView.swift
//  airbnb
//
//  Created by Vitor Porto on 18/05/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imagesURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
