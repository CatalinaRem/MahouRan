//
//  CartPurple.swift
//  MahouRan
//
//  Created by Catalina Rem on 3/9/25.
//

import SwiftUI

var totalPrice: Double = 200
let vat : Double = 0.07
let serviceCharge : Double = 0.1
var beforeVat: Double = totalPrice * vat
var beforeServiceCharge: Double = totalPrice * serviceCharge
var orderPrice: Double = totalPrice - (beforeServiceCharge + beforeVat)


struct CartPurple: View {
    
    @Environment(\.dismiss) private var dismiss

    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                ScrollView {
                    VStack {
                        CartOrderView()
                    }
                    .padding(.top, 120)
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
                            }
                            
                            Spacer()
                            
                            // ขวา: จำนวนเงิน/แต้ม
                            VStack(alignment: .trailing, spacing: 6) {
                                Text(String(format: "%.2f Ran", orderPrice)) // Order Price
                                Text(String(format: "%.2f Ran", beforeServiceCharge)) // Service Charge
                            }
                            
                        }
                        
                        Divider().overlay(Color.white.opacity(0.8))
                        
                        // บรรทัดสรุปทั้งหมด
                        HStack {
                            Text("Total")
                                .fontWeight(.semibold)
                            Spacer()
                            Text(String(format: "%.2f Ran", totalPrice))
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
                            Button {
                                dismiss()
                            } label : {
                                Text("Back")
                                    .foregroundStyle(Color.white)
                                    .padding(8)
                                    .background(buttonColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding(.horizontal, 16)
                            }
                            
                            Spacer()
                            Button(action: {}) { Text("Confirm")
                                    .foregroundStyle(Color.white)
                                    .padding(8)
                                    .background(buttonColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding(.horizontal, 16)
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
    }
    
    
    
// Cart Order Box
    struct CartOrderView: View {
        var body: some View {
            HStack(spacing: 10.0) {
                Image("Pangeana Dura Blanca")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                VStack(alignment : .leading) {
                    Text("Pangeana Dura Blanca")
                        .foregroundStyle(Color.white)
                        .font(.headline)
                    Text("Edit")
                }
                VStack(alignment : .trailing) {
                    Text("200 Ran")
                        .foregroundStyle(Color.white)
                        .font(.headline)
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
