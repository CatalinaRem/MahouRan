//
//  OrderPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 2/9/25.
//

import SwiftUI

struct OrderPurple: View {
    
    @State private var showMenu = false
    @State private var selectedMenu: MenuModel? = nil
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack(alignment: .top) {
            //Content
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(allMenu, id : \.itemName) { menu in
                        MenuCard(
                            image: menu.image,
                            itemName: menu.itemName,
                            itemPrice: menu.itemPrice
                        ) {
                            selectedMenu = menu
                            showMenu = true
                        }
                    }
                    
                }
                .background(Color(.systemBackground))
                .safeAreaInset(edge: .top){}
                .padding(.horizontal, 16)
                .padding(.bottom, 30)
                .toolbar(.hidden, for: .navigationBar)
                .padding(.top, 160)
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
            
            
            //Cart
            VStack {
                Spacer()
                HStack {
                    Text("Item")
                    Spacer()
                    ZStack(alignment: .topTrailing) {
                        Image(systemName: "cart.fill")
                            .font(.title2)

                        Text("0")
                            .font(.caption2)
                            .foregroundColor(.white)
                            .padding(4)
                            .background(Color.red)
                            .clipShape(Circle())
                            .offset(x: 8, y: -8)
                    }

                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(mainColor)
                .frame(height: 124)
                
            }
            .ignoresSafeArea()

        }

        }
    }
 


#Preview {
    OrderPurple()
}
