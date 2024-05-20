//
//  CheckoutView.swift
//  airbnb
//
//  Created by Vitor Porto on 18/05/24.
//

import SwiftUI

struct CheckoutView: View {
    var body: some View {
        HStack {
            
            VStack(alignment: .leading) {
                Text("$500")
                    .fontWeight(.semibold)
                Text("Total before taxes")
                Text("Oct 15 - 20")
                    .underline().fontWeight(.semibold)
            }
            
            Spacer()
            
            Button {
                } label: {
                    Text("Reserve")
                        .padding()
                        .fontWeight(.semibold)
                        .frame(width: 150, height: 50)
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(
                                cornerRadius: 8,
                                style: .continuous
                            )
                            .fill(.pink.opacity(0.8))
                        )
                }
        }
        .padding()

        .frame(maxWidth: .infinity)
    }
}


#Preview {
    CheckoutView()
}
