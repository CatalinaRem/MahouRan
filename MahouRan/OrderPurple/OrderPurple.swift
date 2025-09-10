//
//  OrderPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 2/9/25.
//

import SwiftUI

struct MenuPurpleView: View {
    
    @State private var showMenu = false
    @State private var selectedMenu: MenuModel? = nil
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack(alignment: .top) {
            //Content
            NavigationStack {
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
                    .safeAreaInset(edge: .top){}
                    .padding(.horizontal, 16)
                    .padding(.bottom, 70)
                    .padding(.top, 160)
                }
            }
            //Header
            
            HStack {
                mainColor
                    .overlay{
                        VStack(alignment: .center) {
                    Image("MahouRanLogo2")
                    Text("Senpai : \(currentUser.firstName)")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .foregroundStyle(.white)
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
                        .accessibilityIdentifier("itemLabel")
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
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(mainColor)
                .frame(height: 120)
                
            }
            .ignoresSafeArea()

        }

        }
    }
 


#Preview {
    MenuPurpleView()
}
