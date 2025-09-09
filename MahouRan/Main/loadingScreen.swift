//
//  LoadingScreen.swift
//  MahouRan
//
//  Created by Catalina Rem on 28/6/2568 BE.
//

import SwiftUI
import SwiftData

let startColor = Color(hex: "#D460CF")
let mahouranBackgroundColor = Color(hex: "#EAD7F6")
let mainColor = Color(hex: "#DF83DB")
let buttonColor = Color(hex : "#8A29C3")

struct LoadingScreen: View {
    @State private var isActive: Bool = false
    @Environment(\.modelContext) var context
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color.white.opacity(0.0)
                Image("MahouRanLogo")
                    .resizable()
                    .frame(width: 400, height: 400)
                    .padding()
            }
            .background(startColor)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.isActive = true
                    let descriptor = FetchDescriptor<WitchModel>()
                    let result = try? context.fetch(descriptor)
                    if result?.isEmpty == true {
                        for witch in allWitches {
                            context.insert(witch)
                        }
                    }
                }
                
            }
            
        }
    }
}


#Preview {
    LoadingScreen()
}
