//
//  OrderPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 2/9/25.
//

import SwiftUI

struct OrderPurple: View {
    var body: some View {
        ZStack(alignment: .top) {
            //Content
            ScrollView {
                VStack(alignment: .center, spacing: 16) {
                    
                    
                }
                .background(Color(.systemBackground))
                .safeAreaInset(edge: .top){}
                .padding(.horizontal, 16)
                .padding(.bottom, 30)
                .toolbar(.hidden, for: .navigationBar)
                .padding(.top, 120)
            }
            //Header
            
            HStack {
                mainColor
                    .overlay(alignment: .center)
                {                VStack {
                    Image("MahouRanLogo2")
                    Text("Senpai : \(aqua.firstName)")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                }
                }
                
            }
            .background(mainColor)
            .frame(height: 140)

        }
    }
 
}

#Preview {
    OrderPurple()
}
