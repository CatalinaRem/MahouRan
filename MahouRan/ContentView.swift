//
//  ContentView.swift
//  MahouRan
//
//  Created by Catalina Rem on 28/6/2568 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            HStack {
                mainColor
                    .overlay(alignment: .center)
                {                VStack {
                    Image("MahouRanLogo2")
                        .scaledToFit()
                    //Blue Mode Button for Mahou Ran Blue
                }
                }
                
            }
            .background(mainColor)
            .frame(height: 100)
            
            TabView
            {
                HomePurple()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                Text("Member")
                    .tabItem {
                        Label("Member", systemImage: "creditcard")
                    }
                Text("Notification")
                    .tabItem{
                        Label("Notification", systemImage: "bell")
                    }
                Text("Account")
                    .tabItem {
                        Label("Account", systemImage: "person.circle")
                    }
            }
            .onAppear() {
                UITabBar.appearance().backgroundColor = UIColor(mainColor)
            }
            .tint(Color.yellow)
        }
    }
}
#Preview {
    ContentView()
}
