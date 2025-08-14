//
//  HomePurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftUI

struct HomePurple: View {
    @State private var showProfile = false
    @State var showPassport : Bool = false
    
    var nameTest = "Aqua"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack() {
                    Text("Welcome Back, \(nameTest) Senpai!!")
                    //MageCard Tab
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) { Spacer(minLength: 0)
                            MageCard(
                                image: pippo.image,
                                nameEnglish: pippo.nameEnglish
                            ) {
                                showProfile = true
                            }
                            Spacer(minLength: 0)
                        }
                        .navigationDestination(isPresented: $showProfile) {MageProfile()}
                    }
//-----------------------------------------------------
                    //User Profile
                    HStack {
                        Image(systemName: "person.circle")
                        VStack{
                            Text(nameTest)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Level : 999")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Rank : Expoler")
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
                    HStack {
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
