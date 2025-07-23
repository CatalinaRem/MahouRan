//
//  ContentView.swift
//  MahouRan
//
//  Created by Catalina Rem on 28/6/2568 BE.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            ZStack {
                ZStack {
                    mainColor
                    Image("MahouRanLogo2")
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                        .padding(.top, 35.0)
                }
                .frame(height: 150)
                .ignoresSafeArea()
            }

            Color.white.opacity(0.0)
            HStack {
                Text("Home")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundStyle(.white)
            }
            .frame(width: 500, height: 50)
            .background(mainColor)
            
        }
        .background(mahouranBackgroundColor)
    }
    
}

#Preview {
    ContentView()
}
