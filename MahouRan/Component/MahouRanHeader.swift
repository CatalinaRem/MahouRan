//
//  MahouRanHeader.swift
//  MahouRan
//
//  Created by Catalina Rem on 12/9/25.
//

import SwiftUI

struct MahouRanHeader: View {
    var body: some View {
        HStack {
            mainColor
                .overlay(alignment: .center)
            {                VStack {
                Image("MahouRanLogo2")
                    .scaledToFit()
                //Blue Mode Button for Mahou Ran Blue
            }
            }
        }
        .background(mainColor)
        .frame(height: 100)
    }
}

#Preview {
    MahouRanHeader()
}
