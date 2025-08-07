//
//  ContentView.swift
//  MahouRan
//
//  Created by Catalina Rem on 28/6/2568 BE.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        HStack {
                ZStack {
                    mainColor
                    Image("MahouRanLogo2")
                        .scaledToFit()
                        .frame(height: 100)
                }
                .frame(height: 100)
            
            //Blue Mode Button for Mahou Ran Blue
            
        }
        .background(mainColor)
        
        
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

#Preview {
    ContentView()
}
