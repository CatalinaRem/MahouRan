//
//  Passport.swift
//  MahouRan
//
//  Created by Catalina Rem on 14/8/25.
//

import SwiftUI

struct Passport: View {
    
    
    @Binding var showPassport:Bool
    
    var body: some View {
        HStack {
            mainColor
                .overlay(alignment: .center)
            {                VStack {
                Image("MahouRanLogo2")
                    .scaledToFit()
                //Blue Mode Button for Mahou Ran Blue
            }
            }
            
        }
        .background(mainColor)
        .frame(height: 100)
        ScrollView {
            VStack(alignment: .center, spacing: 16) {
                Button {
                    showPassport = false
                } label: {
                    Label("Back", systemImage: "arrow.backward")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                .tint(buttonColor)
                .frame(maxWidth: .infinity, alignment: .leading)
                Text("Don’t forget to Pui scan!")
                    .font(.system(size: 20))
                Image("QRCodeTesting")
                Text("Privilege when scanning")
                    .font(.title)
                    .fontWeight(.bold)
                BenefitCardView(title: "BTS", subtitle: "")
                BenefitCardView(title: "MRT", subtitle: "")
            }
            .background(Color(.systemBackground))
            .safeAreaInset(edge: .top){}
            .padding(.horizontal, 16)
            .padding(.bottom, 24)
            .toolbar(.hidden, for: .navigationBar)
        }
        
    }
    struct BenefitCardView: View {
        var title: String
        var subtitle: String

        var body: some View {
            VStack(alignment: .leading, spacing: 8) {
                Text("• \(title)")
                    .font(.title2)
                Text("   \(subtitle)")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color(.secondarySystemBackground))
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(Color(mainColor), lineWidth: 2)
            )
        }
    }
}

#Preview {
    Passport(showPassport : .constant(true))
}
