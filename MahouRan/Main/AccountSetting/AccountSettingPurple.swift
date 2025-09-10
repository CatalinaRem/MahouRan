//
//  AccountSettingPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 17/8/25.
//

import SwiftUI

struct AccountSettingPurple: View {
    
    @State private var isNotificationEnabled = true
    @State private var showAbout:Bool = false
    @State private var tapCount = 0
    @State private var showDeveloperMode = false
    @AppStorage("isDeveloper") var isDeveloper: Bool = false
    @AppStorage("isBeta") var isBeta: Bool = true

    
    var body: some View {
        NavigationStack {
                    List {
                        Section(header: Text("บัญชีผู้ใช้")) {
                            NavigationLink("จัดการโปรไฟล์", destination: Text("หน้าโปรไฟล์ยังไม่มา เมี๊ยว~"))
                            NavigationLink("สถานะนักเวท", destination: Text("หน้าโปรไฟล์ยังไม่มา เมี๊ยว~"))
                        }

                        Section(header: Text("ระบบและเวทมนตร์")) {
                            Toggle("รับแจ้งเตือนจากแม่มด",isOn: $isNotificationEnabled)
                            NavigationLink("ธีมเวทมนตร์", destination: Text("หน้าโปรไฟล์ยังไม่มา เมี๊ยว~"))
                        }

                        Section(header: Text("อื่น ๆ")) {
                            NavigationLink("เกี่ยวกับ Mahou Ran", destination: AboutAppPurple())
                            Link("ไปยัง Discord", destination: URL(string: "https://discord.com/invite/DTYnRJp35x")!)
                        }

                        Section {
                            Text("เวอร์ชัน 0.0.1 (Alpha)")
                                .foregroundColor(.gray)
                                .onTapGesture {
                                    tapCount += 1
                                    if tapCount == 5 {
                                        withAnimation {
                                            showDeveloperMode.toggle()
                                        }
                                        tapCount = 0
                                    }
                                }
                        }
                        if showDeveloperMode {
                            Section(header: Text("Developer Mode")) {
                                Toggle("Developer Mode", isOn: $isDeveloper)
                                    .onChange(of: isDeveloper) { _, newValue in
                                        updateDeveloperFlags(newValue)
                                    }
                            }
                        }
                    }
                    .padding(.top, 100)
                }
    }
}

#Preview {
    AccountSettingPurple()
}
