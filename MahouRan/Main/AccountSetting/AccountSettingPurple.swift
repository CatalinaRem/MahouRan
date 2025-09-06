//
//  AccountSettingPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 17/8/25.
//

import SwiftUI

struct AccountSettingPurple: View {
    
    
    @State private var isNotificationEnabled = true
    @State var showAbout:Bool = false
    
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
                            Text("เวอร์ชัน 1.0.0 (Alpha)").foregroundColor(.gray)
                        }
                    }
                    .navigationTitle("การตั้งค่า")
                }
    }
}

#Preview {
    AccountSettingPurple()
}
