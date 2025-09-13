//
//  EmailRegister.swift
//  MahouRan
//
//  Created by Catalina Rem on 13/9/25.
//

import SwiftUI

struct EmailRegister: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var email: String = ""
    
//    private var isFormValid: Bool {
//        !givenName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
//    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing : 20) {
                Text("Senpai Email")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .background(Color.white)
                Form {
                    Section {
                        TextField("Email", text: $email)
                            .autocapitalization(.none)
                    }
                }
            }
        }

    }
}

#Preview {
    EmailRegister()
}
