//
//  LoginScreen.swift
//  MahouRan
//
//  Created by Catalina Rem on 9/9/25.
//

import SwiftUI
import SwiftData

struct LoginScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var loginStatus: String = ""
    
    var body: some View {
        VStack {
            Image("MahouRanLogo")
                .resizable()
                .frame(width: 300, height: 300)
                .padding()
                .overlay(
                    VStack {
                        Text("Welcome to Mahou Ran")
                            .foregroundStyle(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .offset(y: 100)
                    }
                )
            TextField("Email", text: $email)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .background(Color.white)
                .font(.body)
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .clipShape(RoundedRectangle(cornerRadius: 4))
            SecureField("Password", text: $password)
                .textContentType(.password)
                .autocapitalization(.none)
                .background(Color.white)
                .font(.body)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .clipShape(RoundedRectangle(cornerRadius: 4))
            HStack {
                Spacer()
                Button{
                    print("User is forgot password.") //Testing
                } label: {
                    Text(("Forgot Password"))
                        .foregroundStyle(.white)
                        .underline()
                }
            }
            VStack {
                Section {
                    Button {
                        print("User is login.") //Testing
                    } label: {
                        Text("Login")
                            .padding(8)
                            .frame(maxWidth: .infinity)
                            .background(buttonColor)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .foregroundStyle(.white)
                    }
                    Button {
                        print("User is signup.") //Testing
                    } label: {
                            Text("Sign Up")
                                .padding(8)
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .foregroundStyle(buttonColor)
                        }
                    }
                }
            }
        .padding(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(startColor)
        }
    }


#Preview {
    LoginScreen()
}
