//
//  LoginView.swift
//  onlineappwithunal
//
//  Created by Ünal Foçadan on 10.06.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Spacer().frame(height: 50)
            
            // Logo
            Image(systemName: "basket.fill") // Replace with actual logo
                .resizable()
                .scaledToFit()
                .frame(height: 50)
            
            Spacer().frame(height: 30)
            
            // Title and Subtitle
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 5)
            
            Text("Enter your emails and password")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.bottom, 20)
            
            // Email Field
            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
                .padding(.horizontal)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            // Password Field
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
                .padding(.horizontal)
                .padding(.bottom, 10)
            
            // Forgot Password
            HStack {
                Spacer()
                Button(action: {
                    // Handle forgot password action
                }) {
                    Text("Forgot Password?")
                        .foregroundColor(.gray)
                        .font(.footnote)
                }
                .padding(.trailing)
            }
            
            // Login Button
            Button(action: {
                // Handle login action
            }) {
                Text("Log In")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            .padding(.top, 20)
            
            // Signup Option
            HStack {
                Text("Don't have an account?")
                    .foregroundColor(.gray)
                
                Button(action: {
                    // Handle signup action
                }) {
                    Text("Signup")
                        .foregroundColor(.green)
                        .fontWeight(.bold)
                }
            }
            .padding(.top, 20)
            
            Spacer()
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
