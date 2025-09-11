//
//  HomePurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftUI
import SwiftData

struct HomePurple: View {
    @State private var showProfile = false
    @State private var selectedWitch: WitchModel? = nil
    @State private var showPassport : Bool = false
    @AppStorage("isBeta") private var isBeta: Bool = true
    // @Query(sort: \WitchModel.nameEnglish) var allWitches: [WitchModel]
    
    var nameTest = "Aqua"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack() {
                    Text("Welcome Back, \(currentUser.firstName) Senpai!!")
                    //MageCard Tab
                    ScrollView(.horizontal) {
                        HStack {
                            //MageCard
                            ForEach(allWitches, id : \.id) { witch in
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
                        .frame(height: 150)
                    }
                    //User Profile
                    HStack {
                        Image(currentUser.userImage)
                            .resizable()
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                        VStack{
                            Text(currentUser.firstName + " " + currentUser.lastName)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Level : \(currentUser.userXP)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Rank : " + currentUser.userRank)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        //Button to QR Code
                        Button
                        {
                            showPassport = true
                        } label : {
                            Text("Passport")
                                .padding(8)
                                .background(buttonColor)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .foregroundStyle(.white)
                        }
                        .sheet(isPresented: $showPassport) {
                            Passport(onCloseAll: { showPassport = false })
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .background(mainColor)
                    .font(.subheadline)
                    //-----------------------------------------------------
                    //Announcement form Mahou Ran (CRUD)
                    VStack {
                        Text("Proclamation of the Magic Council")
                            .font(.title2)
                        //Blog Post Form Mahou Ran
                        BlogPostView()
                    }
                    
                }
                .padding(.top, 120)
            }
            VStack {
                if isBeta == true {
                    BetaBanner()
                }
            }
        }
    }
}

//Blog Post Box
struct BlogPostView: View {
    @State var showBlogPost: Bool = false
    var body: some View {
        VStack() {
            Image("Post")
                .resizable()
                .frame(width: 300 , height: 300)
                .scaledToFit()
            //Headline of Blog Post
            Text("🐰🪽 การเดินทางครั้งสุดท้ายของเจ้าปุย 🐰🪽")
                .font(.headline)
                .fontWeight(.bold)
            Text("ปุย Amethyst และ Pippo ได้ตัดสินใจจะละทิ้งพลังเวท และออกผจญภัยในโลกที่ไม่คุ้นเคยอย่างกล้าหาญ")
        }
        .frame(width: 350 , height: 450)
    }
}

    
    
#Preview {
        HomePurple()
}
