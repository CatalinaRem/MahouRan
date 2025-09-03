//
//  CartPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 3/9/25.
//

import SwiftUI

struct CartPurple: View {
    var body: some View {
        HStack {
                Image("Pangeana Dura Blanca")
                    .resizable()
                    .frame(width: 50, height: 50)
            VStack(alignment : .leading) {
                Text("Pangeana Dura Blanca")
                Text("120 Ran")
            }
            }
    }

}

#Preview {
    CartPurple()
}
