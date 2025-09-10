//
//  Passport.swift
//  MahouRan
//
//  Created by Catalina Rem on 14/8/25.
//

import SwiftUI

struct Passport: View {
    
    //TODO : Check a count of table on Passport
    
    @Environment(\.dismiss) private var dismiss
    @AppStorage("isDeveloper") private var isDeveloper: Bool = false
    @State var showMenu: Bool = false
    
    var onCloseAll: () -> Void = {}
    
    var body: some View {
        VStack {
            mainColor
                .overlay(alignment: .center)
            {                VStack {
                Image("MahouRanLogo2")
                    .scaledToFit()
            }
            }
            
        }
        .background(mainColor)
        .frame(height: 100)
        ScrollView {
            VStack {
                Button {
                    dismiss()
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
                if isDeveloper {
                    Button {
                        showMenu = true
                    } label: {
                        Text("Menu")
                            .underline()
                            .fullScreenCover(isPresented: $showMenu) {
                                MenuPurpleView(onCloseAll: { 
                                    showMenu = false
                                    onCloseAll()
                                })
                            }
                    }
                }
            }
            .background(Color(.systemBackground))
            .safeAreaInset(edge: .top){}
            .padding(.horizontal, 16)
            .padding(.bottom, 24)
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
    Passport()
}
