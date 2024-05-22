//
//  WishlistsView.swift
//  airbnb
//
//  Created by Vitor Porto on 20/05/24.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists onde you've logged in")
                        .font(.footnote)
                    
                }
                Button {
                    } label: {
                        Text("Log in")
                            .padding()
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(
                                    cornerRadius: 8,
                                    style: .continuous
                                )
                                .fill(.pink.opacity(0.8))
                            )
                    }
                    .padding(.vertical)
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView()
}
