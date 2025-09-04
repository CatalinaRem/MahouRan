//
//  CartPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 3/9/25.
//

import SwiftUI

let orderPrice: Double = total - serviceCharge - vat
let serviceRate = 0.10
let vatRate = 0.07
let serviceCharge = orderPrice * serviceRate
let vat = orderPrice * vatRate
let total: Double = 500

struct CartPurple: View {
    
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                VStack {
                    CartOrderView()
                }
                .padding(.top, 160)
            }
            // Net Order
            VStack {
                Spacer()
                VStack(spacing: 8) {
                    HStack(alignment: .top) {
                        // ซ้าย: รายการ label
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Order Price")
                            Text("Service Charge (10%)")
                            Text("VAT (7%)")
                        }

                        Spacer()

                        // ขวา: จำนวนเงิน/แต้ม
                        VStack(alignment: .trailing, spacing: 6) {
                            Text("\(Int(orderPrice)) รัน")
                            Text("\(Int(serviceCharge)) รัน")
                            Text("\(Int(vat)) รัน")
                        }

                    }

                    Divider().overlay(Color.white.opacity(0.8))

                    // บรรทัดสรุปทั้งหมด
                    HStack {
                        Text("Total")
                            .fontWeight(.semibold)
                        Spacer()
                        Text("\(Int(total)) รัน")
                            .fontWeight(.semibold)
                    }
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(mainColor)
            }
            .ignoresSafeArea(.keyboard)
            
            
            
            //Header
            
            HStack {
                mainColor
                    .overlay(alignment: .center)
                {VStack {
                    Text("Senpai Order")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                    HStack {
                        Button(action: {}) { Text("Add More")
                                .foregroundColor(Color.red)
                                .padding(8)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .offset(x: 20)
                            Spacer()
                            
                        }
                        Button(action: {}) { Text("Confirm")
                                .foregroundColor(Color.white)
                                .padding(8)
                                .background(buttonColor)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .offset(x: -20)
                        }
                    }
                }
                }
                
            }
            .background(mainColor)
            .frame(height: 100)
        }
        .frame(maxWidth : .infinity, maxHeight: .infinity)
        .background(mahouranBackgroundColor)
    }
    
    
    

    struct CartOrderView: View {
        var body: some View {
            HStack(spacing: 10.0) {
                Image("Pangeana Dura Blanca")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                VStack(alignment : .leading) {
                    Text("Pangeana Dura Blanca")
                    Text("Edit")
                }
                VStack(alignment : .trailing) {
                    Text("200 Ran")
                        .padding(.horizontal, 9.0)
                    
                }
                
            }
            .frame(width : 375, height: 120)
            .background(mainColor)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }

}

#Preview {
    CartPurple()
}
