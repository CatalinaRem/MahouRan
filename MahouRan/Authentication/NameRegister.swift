//
//  NameRegister.swift
//  MahouRan
//
//  Created by Catalina Rem on 11/9/25.
//

import SwiftUI

struct NameRegister: View {
    @Environment(\.dismiss) private var dismiss

    @State private var givenName: String = ""
    @State private var birthDate: Date = {
        var comps = DateComponents()
        comps.year = 2000
        comps.month = 1
        comps.day = 1
        return Calendar(identifier: .gregorian).date(from: comps) ?? Date()
    }()

    @FocusState private var focusedField: Field?
    private enum Field { case given }

    private var isFormValid: Bool {
        !givenName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

    private var dateRange: ClosedRange<Date> {
        let gregorian = Calendar(identifier: .gregorian)
        let start = gregorian.date(from: DateComponents(year: 1975, month: 1, day: 1))!
        return start...Date()
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("ชื่อ", text: $givenName, prompt: Text("ชื่อ"))
                        .textContentType(.givenName)
                        .textInputAutocapitalization(.words)
                        .autocorrectionDisabled()
                        .focused($focusedField, equals: .given)
                        .submitLabel(.next)
                }
                Section {
                    DatePicker("วันเกิด", selection: $birthDate, in: dateRange, displayedComponents: .date)
                        .datePickerStyle(.compact)
                }
                Section(footer:
                    Text("ชื่อและวันเกิดของรุ่นพี่ จะกำหนดไว้สำหรับการรับของรางวัลภายในร้าน Mahou Ran และ Mahou Ran Blue")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .padding(.vertical, 5)
                ) { EmptyView() }
            }
            .formStyle(.grouped)
            .navigationTitle("ชื่อและวันเกิด")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("ยกเลิก") { dismiss() }
                }
            }
            .safeAreaInset(edge: .bottom) {
                Button("ดำเนินการต่อ") {
                    // TODO: Handle next step
                }
                .buttonStyle(.borderedProminent)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .padding(.top, 8)
                .padding(.bottom, 12)
                .disabled(!isFormValid)
            }
        }
        .environment(\.locale, Locale(identifier: "th_TH"))
    }
}

#Preview {
    NameRegister()
        .environment(\.locale, Locale(identifier: "th_TH"))
}
