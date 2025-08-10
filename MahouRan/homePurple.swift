//
//  homePurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftUI

struct homePurple: View {
    var username : String = "Aqua"
    var body: some View {
        VStack {
            Text("Welcome back, \(username) Senpai!!")
            HStack {
                ZStack {
                    Image("Pui")
                    Text("Pippo")
                }
            }
        }
    }
}

#Preview {
    homePurple()
}
