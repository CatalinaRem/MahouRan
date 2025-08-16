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
                HStack {
                    Image("explorer")
                        .resizable()
                        .frame(width: 100, height: 100)
                    VStack {
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
                    }
                HStack {
                    Image(aqua.userImage)
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                    VStack{
                        Text(aqua.firstName + " " + aqua.lastName)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Rank : " + aqua.userRank)
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
                    Text("Experience : \(aqua.userXP) EXP")
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
                .padding(.bottom, 24)
                }
            Text("Your Oshi")
            
            .fullScreenCover(isPresented: $showPassport, content: {Passport(showPassport: $showPassport)})
            }
        }
    }


#Preview {
    MemberPurple()
}
