//
//  MageProfile.swift
//  MahouRan
//
//  Created by Catalina Rem on 11/8/25.
//

import SwiftUI

// 🔝 แถบโลโก้ติดบนสุด
struct TopBar: View {
    var body: some View {
        HStack {
            Spacer()
            Image("MahouRanLogo2")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
            Spacer()
        }
        .frame(height: 100)
        .background(mainColor)
        .overlay(Divider(), alignment: .bottom)
    }
}

struct MageProfile: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Button {
                    print(">>> Button tapped <<<")
                } label: {
                    Label("Back", systemImage: "arrow.backward")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                .tint(buttonColor)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 24)
        }
        .background(Color(.systemBackground))
        .safeAreaInset(edge: .top) {
            TopBar()
        }
    }
}

#Preview {
    MageProfile()
}
