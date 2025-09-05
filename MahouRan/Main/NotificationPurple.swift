//
//  NotificationPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 17/8/25.
//

import SwiftUI

struct NotificationPurple: View {
    var body: some View {
        ScrollView {
            NotificationPurpleBox()
        }
    }
}

struct NotificationPurpleBox: View {
    var body: some View {
        HStack(spacing: 10.0) {
            Image("Pangeana Dura Blanca")
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment : .leading) {
                Text("Pangeana Dura Blanca")
                Text("Edit")
            }
            VStack(alignment : .trailing) {
                Text("200 Ran")
                    .padding(.horizontal, 9.0)
                
            }
            
        }
        .frame(width : 375, height: 120)
        .background(mainColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.top, 120)
    }
}

#Preview {
    NotificationPurple()
}
