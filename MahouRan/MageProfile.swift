//
//  MageProfile.swift
//  MahouRan
//
//  Created by Catalina Rem on 11/8/25.
//

import SwiftUI
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
            .background(Color(.systemBackground))
            .safeAreaInset(edge: .top)
            {

            }
            .padding(.horizontal, 16)
            .padding(.bottom, 24)
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    MageProfile()
}
