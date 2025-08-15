//
//  MageCard.swift
//  MahouRan
//
//  Created by Catalina Rem on 11/8/25.
//


import SwiftUI

struct MageCard: View {
    let image: String
    let nameEnglish: String
    var onTap: () -> Void = {}

    var body: some View {
            Button(action: {
                onTap()
            }) {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .overlay(alignment: .bottom) {
                        VStack(alignment: .leading, spacing: 2) {
                            Text(nameEnglish)
                                .font(.subheadline)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .padding(3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
            }
            .buttonStyle(PlainButtonStyle())
            .contentShape(RoundedRectangle(cornerRadius: 12))
        }
}

#Preview {
    MageCard(image: "Pui", nameEnglish: "Pui", onTap: {print("Text")})
}
