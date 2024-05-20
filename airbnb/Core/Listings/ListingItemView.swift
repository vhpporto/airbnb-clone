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
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 5) {
                        Text("$567")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("night")
                            .foregroundStyle(.black)
                    }
                    
                    
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.black)
                    Text("4.8")
                        .foregroundStyle(.black)
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
