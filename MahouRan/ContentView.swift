//
//  ContentView.swift
//  MahouRan
//
//  Created by Catalina Rem on 28/6/2568 BE.
//

import SwiftUI

struct ContentView: View {

    @AppStorage("isBeta") private var isBeta: Bool = false
    
    
    var body: some View {
        ZStack(alignment: .top) {
            //Content
            TabView
            {
                HomePurple()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                MemberPurple()
                    .tabItem {
                        Label("Member", systemImage: "creditcard")
                    }
                NotificationPurple()
                    .tabItem{
                        Label("Notification", systemImage: "bell")
                    }
                AccountSettingPurple()
                    .tabItem {
                        Label("Account", systemImage: "person.circle")
                    }
            }
            .onAppear() {
                UITabBar.appearance().backgroundColor = UIColor(mainColor)
            }
            .tint(Color.yellow)
            
            //Header
            
            HStack {
                mainColor
                    .overlay(alignment: .center)
                {                VStack {
                    Image("MahouRanLogo2")
                        .scaledToFit()
                    //Blue Mode Button for Mahou Ran Blue
                }
                    if isBeta {
                        Text("Beta Preview")
                            .font(.system(size: 14, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .offset(x: 100, y: 37.5)
                    }
                    else {
                        Text("Developer Mode")
                            .font(.system(size: 14, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .offset(x: 100, y: 37.5)
                    }
                }
            }
            .background(mainColor)
            .frame(height: 100)

        }
        
    }
}

//Beta Banner
struct BetaBanner:View {
    var body: some View {
        VStack{
            Image("MahouRanBetaBanner")
                .resizable()
                .scaledToFit()
        }
    }
}


#Preview {
    ContentView()
}
