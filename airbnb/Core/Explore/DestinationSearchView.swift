//
//  DestinationSearchView.swift
//  airbnb
//
//  Created by Vitor Porto on 19/05/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOptions: DestinationSearchOptions = .dates
    @State private var fromDate = Date()
    @State private var toDate = Date()
    
    var body: some View {


        VStack {
            
            
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
                
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black
                    )
            }
  
            VStack {
                if selectedOptions == .location {
                    VStack(alignment: .leading) {
                        Text("Where to?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.small)
                            TextField("Search destinations", text: $destination)
                                .font(.subheadline)
                        }
                        .frame(height: 44)
                        .padding(.horizontal)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(lineWidth: 1.0)
                                .foregroundStyle(Color(.systemGray4))
                        }
                    }
                    
                } else {
                    CollapsedPickerView(title: "Where to", description: "Search destination")
                        .onTapGesture {
                            withAnimation(.snappy) {
                                selectedOptions = .location
                            }
                        }
                }
            }
            .padding()
            .frame(height: selectedOptions == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOptions = .location
                }
            }
            
            
            VStack {
                if selectedOptions == .dates {
                    VStack(alignment: .leading) {
                        Text("When's your trip?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()
                        DatePicker("From", selection: $fromDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $toDate, displayedComponents: .date)
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .padding()
            .frame(height: selectedOptions == .dates ? 160 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOptions = .dates
                }
            }
            
            
            
            VStack {
                if selectedOptions == .guests {
                    HStack {
                        Text("Show expanded view")
                        Spacer()
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guestss")
                }
            }
            .padding()
            .frame(height: selectedOptions == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOptions = .guests
                }
            }
        }
    }
    
}

#Preview {
    DestinationSearchView(show: .constant(false))
}


struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
