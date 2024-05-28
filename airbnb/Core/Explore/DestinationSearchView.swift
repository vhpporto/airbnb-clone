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
    @State private var selectedOptions: DestinationSearchOptions = .guests
    @State private var fromDate = Date()
    @State private var toDate = Date()
    @State private var adults = 0;
    
    var body: some View {
        
        
        VStack {
            
            HStack {
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
                
                Spacer()
                
                if !destination.isEmpty {
                    Button("Clear") {
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                
            }
            .padding()
            
            
            
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
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOptions == .location ? 120 : 64)
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
                            .foregroundStyle(.black)
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
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOptions == .dates ? 160 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOptions = .dates
                }
            }
            
            
            
            VStack {
                if selectedOptions == .guests {
                    VStack {
                        Text("Who's coming?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        
                        Stepper {
                            Text("\(adults) Adults")
                        } onIncrement: {
                            adults += 1
                        } onDecrement: {
                            if adults == 0 {
                                return
                            } else {
                                adults -= 1
                            }
                            
                        }
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guestss")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOptions == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOptions = .guests
                }
            }
            Spacer()
        }
        
    }
    
}

#Preview {
    DestinationSearchView(show: .constant(false))
}


struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
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
