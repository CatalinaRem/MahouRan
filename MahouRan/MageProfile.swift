//
//  MageProfile.swift
//  MahouRan
//
//  Created by Catalina Rem on 11/8/25.
//

import SwiftUI
struct MageProfile: View {
    
    @Environment(\.dismiss) var dismiss
    var oshiCount = 99
    
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
                    Image(pippo.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .cornerRadius(.infinity)
                    
                    VStack(alignment: .leading) {
                        Text(pippo.nameEnglish)
                            .font(.system(size: 30, weight: .bold, design: .default))
                        HStack
                        {
                            Text(pippo.nameThai)
                            Text(pippo.nameJapanese)
                        }
                        Button(action: {}) { Text("Set as Oshi")
                                .padding(8)
                                .background(buttonColor)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .foregroundStyle(Color.white)
                        }
                        Text("\(oshiCount) Oshi")
                    }
                    .frame(maxWidth: 600, alignment: .leading)
                }
                HStack {
                    Text(pippo.title!)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                }
                VStack {
                    Text(pippo.quote)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("\(pippo.nameEnglish) Mahou Ran")
                        .frame(maxWidth: .infinity,
                            alignment: .trailing)
                        .foregroundStyle(.secondary)
                }
                VStack {
                    Text("Birthday")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                    Text(pippo.birthDate)
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
                            Text("\(pippo.height!) cm")
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
                            Text("\(pippo.mbti)")
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
                    
                    //Use ForEach
                    Text("\(pippo.favoriteMenu)")
                        .frame(maxWidth: .infinity , maxHeight: .infinity)
                        .frame(height: 42)
                        .background(mahouranBackgroundColor)
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                    Text("Interesting")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                    Text("\(pippo.interests)")
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
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    MageProfile()
}
