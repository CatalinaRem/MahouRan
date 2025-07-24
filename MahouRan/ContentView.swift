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
                    mainColor
                    Image("MahouRanLogo2")
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                        .padding(.top, 35.0)
                }
                .frame(height: 150)
                .ignoresSafeArea()
        }
            TabView
        {
            Text("Main")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Member")
                .tabItem {
                    Label("Member", systemImage: "creditcard")
                }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(mainColor)
        }
        .tint(Color.yellow)
    }
    
}

#Preview {
    ContentView()
}
