//
//  TabbarView.swift
//  airbnb
//
//  Created by Vitor Porto on 21/05/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ExploreView()
                .badge(2)
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            WishlistsView()
                .tabItem {
                    Label("Sent", systemImage: "suit.heart")
                }
            ProfileView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

#Preview {
    TabbarView()
}
