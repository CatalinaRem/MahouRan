//
//  AboutAppPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 5/9/25.
//

import SwiftUI

struct AboutAppPurple: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var showRules = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
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
                        .padding(.horizontal , 20)
                        
                        Image("MahouRanLogoMahouRanApp")
                            .resizable()
                            .background(mainColor)
                            .frame(maxWidth: 150 , maxHeight: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        Text("Mahou Ran")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Version Alpha 0.0.1")
                            .font(.caption)
                        Divider().overlay(Color.gray.opacity(0.8))
                        Text("Design for your magical world")
                            .font(.headline)
                        
                        Button {
                            showRules = true
                        } label: {
                            Text("Mahou Ran Rules")
                                .foregroundColor(mainColor)
                                .padding(.vertical, 5)
                        }
                        .sheet(isPresented: $showRules) {
                            MahouRanRuleView()
                        }
                        
                        Button(action: {}) {
                            Text("Terms of Service")
                                .foregroundColor(mainColor)
                                .padding(.vertical, 5)
                        }
                        Button(action: {}) {
                            Text("Privacy Policy")
                                .foregroundColor(mainColor)
                                .padding(.vertical, 5)
                        }
                    }
                    .padding(.top, 100)
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    VStack(alignment: .center) {
                        Text("Mahou Ran is trademarked by Jirayu Prani.")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Copyright © 2025 Jirayu Prani. All rights reserved.")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Developed by Catalina Rem")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .padding(.bottom, 20)
                    
                }
            }
        }
    }
}

#Preview {
    AboutAppPurple()
}
