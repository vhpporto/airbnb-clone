//
//  ListingImageCarouselView.swift
//  airbnb
//
//  Created by Vitor Porto on 18/05/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "img-1",
        "img-2",
        "img-3",
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
