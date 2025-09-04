//
//  HomePurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftUI

struct HomePurple: View {
    @State private var showProfile = false
    @State private var selectedWitch: WitchModel? = nil
    @State var showPassport : Bool = false
    
    var nameTest = "Aqua"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack() {
                    Text("Welcome Back, \(aqua.firstName) Senpai!!")
                    //MageCard Tab
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(allWitches, id : \.nameEnglish) { witch in
                                MageCard(
                                    image: witch.image,
                                    nameEnglish: witch.nameEnglish
                                ) {
                                    selectedWitch = witch
                                    showProfile = true
                                }
                            }
                            .navigationDestination(isPresented: $showProfile) {
                                if let witch = selectedWitch {
                                    WitchProfile(witch: witch)
                                }
                            }
                        }
                    }
                        //User Profile
                        HStack {
                            Image(aqua.userImage)
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                            VStack{
                                Text(aqua.firstName + " " + aqua.lastName)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Level : \(aqua.userXP)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Rank : " + aqua.userRank)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            //Button to QR Code
                            Button(action: {showPassport.toggle()}) { Text("Passport")
                                    .padding(8)
                                    .background(buttonColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(mainColor)
                        .font(.subheadline)
                        .foregroundStyle(.white)
                        //-----------------------------------------------------
                        //Announcement form Mahou Ran (CRUD)
                        VStack {
                            Text("Proclamation of the Magic Council")
                            //Blog Post Form Mahou Ran
                            
                        }
                    }
                    .padding(.top, 120)
                    .fullScreenCover(isPresented: $showPassport, content: {Passport(showPassport: $showPassport)})
                    
                }
            }
        }
    }
    
    
#Preview {
        HomePurple()
}
