//
//  ListingDetailView.swift
//  airbnb
//
//  Created by Vitor Porto on 18/05/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    var bedImages = ["img-5", "img-6"]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            ScrollView {
                ZStack(alignment: .topLeading) {
                    ListingImageCarouselView()
                        .frame(height: 320)
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .background {
                                Circle()
                                    .fill(.white)
                                    .frame(width: 32, height: 32)
                            }
                    }
                    .padding(32)
                }
                
               
                VStack(alignment: .leading, spacing: 8) {
                    Text("Miami Villa")
                        .fontWeight(.semibold)
                        .font(.title)
                    
                    HStack {
                        Image(systemName: "star.fill")
                        Text("4.8")
                        Text("-")
                        Text("28 reviews").fontWeight(.semibold).underline()
                        
                    }
                    .font(.subheadline)
                    Text("Miami, Floria").font(.subheadline)
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Entire villa hosted by")
                            .fontWeight(.semibold)
                            .font(.title3)
                        Text("John Smith")
                            .fontWeight(.semibold)
                            .font(.title3)
                        HStack {
                            Text("4 guests -")
                            Text("4 badrooms -")
                            Text("4 beds -")
                            Text("4 baths")
                        }
                        .font(.caption2)
                    }
                    Spacer()
                    Image("img-1")
                        .resizable()
                        .frame(width: 64, height: 64)
                    
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    
                }
                .padding()
                
                Divider()
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack(spacing: 15) {
                        Image(systemName: "checkmark.seal.fill")
                        VStack(alignment: .leading) {
                            Text("Self check-in")
                                .fontWeight(.semibold)
                                .font(.subheadline)
                            Text("Check yourself in with the keypad")
                                .foregroundStyle(.gray)
                                .font(.footnote)
                        }
                    }
                    HStack(spacing: 15) {
                        Image(systemName: "medal")
                            .fontWeight(.semibold)
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .fontWeight(.semibold)
                                .font(.subheadline)
                            Text("Superthost are experienced, highly rated hosts who are commented to providing greate stars for gests")
                                .foregroundStyle(.gray)
                                .font(.footnote)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                Divider()
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("What this place offers")
                        .fontWeight(.semibold)
                    HStack(spacing: 15) {
                        Image(systemName: "checkerboard.shield")
                        Text("Wifi")
                    }
                    HStack(spacing: 15) {
                        Image(systemName: "wifi")
                        Text("Alarm system")
                    }
                    HStack(spacing: 15) {
                        Image(systemName: "wifi")
                        Text("Balcony")
                    }
                    HStack(spacing: 15) {
                        Image(systemName: "wifi")
                        Text("laundry")
                    }
                    HStack(spacing: 15) {
                        Image(systemName: "tv")
                        Text("TV")
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                Divider()
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Where you'll sleep")
                        .fontWeight(.semibold)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                            ForEach(bedImages, id: \.self) { image in
                                VStack(alignment: .leading) {
                                    Image(image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    Text("Bedroom 1")
                                        .fontWeight(.semibold)
                                    Text("1 king bed")
                                        .font(.caption)
                                    
                                }
                                
                                
                            }
                        }
                        
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                Divider()
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Where you'll be")
                        .fontWeight(.semibold)
                    Map()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
            }
            
            Spacer()
            
            Divider()
            
                        CheckoutView()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    ListingDetailView()
}
