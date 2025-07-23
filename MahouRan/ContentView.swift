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
            Text("Tab 1")
            Text("Tab 2")
            Text("Tab 3")
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(mainColor)
        }
    }
    
}

#Preview {
    ContentView()
}
