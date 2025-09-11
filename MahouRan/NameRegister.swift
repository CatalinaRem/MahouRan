//
//  NameRegister.swift
//  MahouRan
//
//  Created by Catalina Rem on 11/9/25.
//

import SwiftUI

struct NameRegister: View {
    
    @State private var name: String = ""
    @State private var birthDate: Date = Date()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name", text: $name)
                    DatePicker("Birthday", selection: $birthDate, displayedComponents: .date)
                        .datePickerStyle(.compact)
                }
                Section {
                    EmptyView()
                } footer: {
                    Text("ชื่อและวันเกิดของรุ่นพี่ จะกำหนดไว้สำหรับการรับของรางวัลภายในร้าน Mahou Ran และ Mahou Ran Blue")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.vertical, 5)
                }
            }
            .formStyle(.grouped)
            .navigationTitle(Text("Name and Birthday"))
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    NameRegister()
}
