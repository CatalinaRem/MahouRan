//
//  WitchProfile.swift
//  MahouRan
//
//  Created by Catalina Rem on 11/8/25.
//

import SwiftUI
struct WitchProfile: View {
    
    
    @Environment(\.dismiss) var dismiss
    var oshiCount = 99
    var witch: WitchModel
    var isOshi = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 16) {
                Button {
                    dismiss()
                } label: {
                    Label("Back", systemImage: "arrow.backward")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                .tint(buttonColor)
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    //TODO : Animation พลิก
                    Image(witch.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                        .cornerRadius(.infinity)
                    
                    VStack(alignment: .leading) {
                        Text(witch.nameEnglish)
                            .font(.system(size: 48, weight: .bold, design: .default))
                        HStack
                        {
                            Text(witch.nameThai)
                                .font(.system(size : 24))
                            Text(witch.nameJapanese)
                                .font(.system(size : 24))
                        }
                        Button(action: {}) { Text("Set as Oshi")
                                .padding(8)
                                .background(buttonColor)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .foregroundStyle(Color.white)
                        }
                        Text("\(oshiCount) Oshi")
                    }
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 1000, alignment: .leading)
                }
                HStack {
                    Text(witch.title ?? "Apprentice")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                }
                VStack {
                    Text(witch.quote)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("\(witch.nameEnglish) Mahou Ran")
                        .frame(maxWidth: .infinity,
                               alignment: .trailing)
                        .foregroundStyle(.secondary)
                }
                VStack {
                    Text("Birthday")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                    Text(witch.birthDate)
                        .frame(maxWidth: .infinity , maxHeight: .infinity)
                        .frame(height: 42)
                        .background(mahouranBackgroundColor)
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                    HStack {
                        VStack {
                            Text("Height")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 0)
                                .padding(.vertical, 0)
                            Text("\(witch.height!) cm")
                                .frame(maxWidth: .infinity , maxHeight: .infinity)
                                .frame(height: 42)
                                .background(mahouranBackgroundColor)
                                .clipShape(RoundedRectangle(cornerRadius: 24))
                        }
                        VStack {
                            Text("MBTI")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 0)
                                .padding(.vertical, 0)
                            Text("\(witch.mbti)")
                                .frame(maxWidth: .infinity , maxHeight: .infinity)
                                .frame(height: 42)
                                .background(mahouranBackgroundColor)
                                .clipShape(RoundedRectangle(cornerRadius: 24))
                        }
                    }
                    Text("Favorite Menu")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                    
                    //Use ForEach For Array
                    Text(witch.favoriteMenu.joined(separator: " , "))
                        .frame(maxWidth: .infinity , maxHeight: .infinity)
                        .frame(height: 42)
                        .background(mahouranBackgroundColor)
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                    Text("Interesting")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                    Text(witch.interests.joined(separator: " , "))
                        .frame(maxWidth: .infinity , maxHeight: .infinity)
                        .frame(height: 42)
                        .background(mahouranBackgroundColor)
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                    
                    
                }
                .padding(.horizontal, 5)
                
            }
            .background(Color(.systemBackground))
            .safeAreaInset(edge: .top){}
            .padding(.horizontal, 16)
            .padding(.bottom, 24)
            .padding(.top, 80)
            
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(mainColor)
        }
    }
}
