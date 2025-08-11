//
//  MageProfile.swift
//  MahouRan
//
//  Created by Catalina Rem on 11/8/25.
//

import SwiftUI

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
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Button {
                    dismiss()
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
                }
                .frame(maxWidth: 250, alignment: .leading)
            }
        }
        .toolbar(.hidden, for: .navigationBar)
        .background(Color(.systemBackground))
        .safeAreaInset(edge: .top)
        {
            TopBar()
        }
    }
}

#Preview {
    MageProfile()
}
