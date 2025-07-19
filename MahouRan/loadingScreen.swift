//
//  loadingScreen.swift
//  MahouRan
//
//  Created by Catalina Rem on 28/6/2568 BE.
//

import SwiftUI

let manhouranMainColor = Color(red: 212/255, green: 96/255, blue: 207/255)

struct loadingScreen: View {
    var body: some View {
        ZStack {
            Color.white.opacity(0.0)
            Image("MahouRanLogo")
                .resizable()
                .frame(width: 400, height: 400)
                .padding()
        }
        .background(manhouranMainColor)
        .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    loadingScreen()
}
