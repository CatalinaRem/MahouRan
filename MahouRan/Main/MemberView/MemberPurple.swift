//
//  MemberPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 16/8/25.
//

import SwiftUI


struct MemberPurple: View {
    @State var showPassport : Bool = false
    
    
    var body: some View {
        NavigationStack{
            VStack() {
                HStack() {
                    Image("explorer")
                        .resizable()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(width: 100, height: 100)
                    VStack(alignment: .center) {
                        Image("QRCodeTesting")
                            .resizable()
                            .frame(width: 100, height: 100)
                        Button(action: {showPassport.toggle()}) { Text("Infomation")
                                .padding(8)
                                .background(buttonColor)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        .font(.subheadline)
                        .foregroundStyle(.white)
                    }
                    .frame(maxWidth: 150, alignment: .trailing)
                    
                    }
                HStack {
                    Image(currentUser.userImage)
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                    VStack{
                        Text(currentUser.firstName + " " + currentUser.lastName)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Rank : " + currentUser.userRank)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
                .background(mainColor)
                .font(.subheadline)
                .foregroundStyle(.white)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Experience : \(currentUser.userXP) EXP")
                    Text("Member Expired : ")
                    Text("Last visit : ")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color(mainColor), lineWidth: 2)
                    
                )
                .padding(.horizontal, 16)
                }
            VStack(alignment: .leading, spacing: 8) {
                Text("Your Oshi")
                    .frame(width: 120 , height: 40)
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    Image(pippo.image)
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                    VStack{
                        Text(pippo.nameEnglish + " Mahou Ran")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Last Arrival : 2021/01/01")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 10)
            .padding(.horizontal, 30)
            .font(.subheadline)
                
            
            
                .fullScreenCover(isPresented: $showPassport, content: {Passport(showPassport: $showPassport)})
            }
        }
    }


#Preview {
    MemberPurple()
}

