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
                    Text("Welcome Back, \(currentUser.firstName) Senpai!!")
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
                            .font(.title2)
                        //Blog Post Form Mahou Ran
                        BlogPostView()
                    }
                    
                }
                .padding(.top, 120)
                .fullScreenCover(isPresented: $showPassport, content: {Passport(showPassport: $showPassport)})
                
            }
            VStack {
                //Beta Banner has on ContentView.swift
                
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
