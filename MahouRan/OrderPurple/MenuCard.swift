//
//  MenuCard.swift
//  MahouRan
//
//  Created by Catalina Rem on 2/9/25.
//

import SwiftUI

struct MenuCard: View {
    let image: String
    let itemName: String
    let itemPrice: Double
    var onTap: () -> Void = {}

    var body: some View {
        VStack {
            Button(action: {
                onTap()
            }) {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                
            
//                    .overlay(alignment: .bottom) {
//                        VStack(alignment: .leading, spacing: 2) {
//                        }
//                    }
                
                
            }
            .buttonStyle(PlainButtonStyle())
            .contentShape(RoundedRectangle(cornerRadius: 12))
            Text(itemName)
                .frame(maxWidth: 150, alignment: .leading)
            Text(String(format: "%.2f Ran", itemPrice))
                .frame(maxWidth: 150, alignment: .leading)
        }
    }
}
#Preview {
    MenuCard(image: "Edamane", itemName: "Edamane" , itemPrice: 120.0, onTap: {print("Text")})
}
