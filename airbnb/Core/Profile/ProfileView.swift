//
//  ProfileView.swift
//  airbnb
//
//  Created by Vitor Porto on 20/05/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Log in to start planning your next trip")
                
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
                
                HStack {
                    Text("Don't have an account?")
                    Text("Sign up")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.subheadline)
                
            }
            .padding(.horizontal)
           
            
            VStack {
                MenuOptionView(icon: "gear", title: "Settings")
 
                MenuOptionView(icon: "gear", title: "Accessibility")

                MenuOptionView(icon: "questionmark.circle", title: "Visitir the Help Center")
                
            }
            .fontWeight(.semibold)

            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    ProfileView()
}

struct MenuOptionView: View {
    let icon: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: icon)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                 
                Image(systemName: "chevron.right")
            }
            .padding()
        }
        Divider()
    }
}
