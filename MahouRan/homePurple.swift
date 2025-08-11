//
//  HomePurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftUI

struct HomePurple: View {
    @State private var showProfile = false

    var body: some View {
        NavigationStack {
            VStack {
                MageCard(
                    image: pippo.image,
                    nameEnglish: pippo.nameEnglish
                ) {
                    showProfile = true
                }
            }
            .navigationDestination(isPresented: $showProfile) {
                MageProfile()
            }
        }
    }
}


#Preview {
    HomePurple()
}
