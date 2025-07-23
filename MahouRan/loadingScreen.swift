//
//  loadingScreen.swift
//  MahouRan
//
//  Created by Catalina Rem on 28/6/2568 BE.
//

import SwiftUI


let startColor = Color(hex: "#D460CF")
let mahouranBackgroundColor = Color(hex: "#EAD7F6")
let mainColor = Color(hex: "#DF83DB")

struct loadingScreen: View {
    var body: some View {
        ZStack {
            Color.white.opacity(0.0)
            Image("MahouRanLogo")
                .resizable()
                .frame(width: 400, height: 400)
                .padding()
        }
        .background(startColor)
        .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    loadingScreen()
}
