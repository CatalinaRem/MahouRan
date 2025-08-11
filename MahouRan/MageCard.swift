//
//  MageCard.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftUI

struct MageCard: View {    
    var body: some View {
        VStack {
            // MageCard 1
            Image(pippo.image)
              .resizable()
              .scaledToFill()
              .frame(width: 150, height: 150)
              .clipShape(RoundedRectangle(cornerRadius: 12))
              .overlay(alignment: .bottom) {
                  VStack(alignment: .leading, spacing: 2) {
                      Text(pippo.nameEnglish)
                          .font(.subheadline)
                          .bold()
                          .frame(maxWidth: .infinity, alignment: .center)
                  }
                .padding(8)
                .frame(maxWidth: .infinity, alignment: .leading)
              }
        }
    }
}

#Preview {
    MageCard()
}
