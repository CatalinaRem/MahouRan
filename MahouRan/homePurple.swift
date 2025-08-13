//
//  HomePurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftUI

struct HomePurple: View {
    @State private var showProfile = false
    var nameTest = "Aqua"
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome Back, \(nameTest) Senpai!!")
                HStack {
                MageCard(
                    image: pippo.image,
                    nameEnglish: pippo.nameEnglish
                ) {
                    showProfile = true
                }
           }
                .navigationDestination(isPresented: $showProfile) {MageProfile()}
            }
        }
    }
}


#Preview {
    HomePurple()
}
