//
//  ListingItemView.swift
//  airbnb
//
//  Created by Vitor Porto on 18/05/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .tint(.primary)
                        .fontWeight(.semibold)
                        .font(.headline)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 5) {
                        Text("$567")
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
                    Text("4.8")
                        .tint(.primary)
                }
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    ListingItemView()
}
