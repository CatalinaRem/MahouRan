//
//  MenuCard.swift
//  MahouRan
//
//  Created by Catalina Rem on 2/9/25.
//

import SwiftUI

struct MenuCard: View {
    let image: String
    let title: String
    let price: String
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
            Text(title)
                .frame(maxWidth: 150, alignment: .leading)
            Text(price)
                .frame(maxWidth: 150, alignment: .leading)
        }
    }
}
#Preview {
    MenuCard(image: "Edamane", title: "Edamane" , price: "100 รัน", onTap: {print("Text")})
}
