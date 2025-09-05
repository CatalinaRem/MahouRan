//
//  NotificationPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 17/8/25.
//

import SwiftUI

struct NotificationPurple: View {
    var body: some View {
        ScrollView {
            NotificationPurpleBox()
        }
    }
}

struct NotificationPurpleBox: View {
    var body: some View {
        HStack(spacing: 10) {
            VStack(alignment : .leading) {
                Text("ประกาศจากสภาสูง")
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 20)
                VStack{
                    Text("แจ้งเตือนนี้เป็นเพียง คาถาทดสอบ (Alpha) \nโปรดอย่าตกใจ หากได้ยินเสียงกระซิบจากแม่มดนะคะ~ ")
                        .foregroundStyle(.white)
                        .font(.caption)
                        .padding(.leading, 20)
                }
                HStack {
                    Spacer()
                    Text("12:34 น.")
                        .foregroundStyle(.white)
                        .font(.caption)
                        .opacity(0.75)
                        .padding(.horizontal, 20)
                }
                

            }
            
        }
        .frame(width : 375, height: 120)
        .background(mainColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.top, 120)
    }
}

#Preview {
    NotificationPurple()
}
