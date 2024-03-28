//
//  LoginView.swift
//  Shortform
//
//  Created by Utsav Budathoki on 28/3/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoginFailed: Bool = false
    
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(.bottom, 30)
            
            TextField("Username", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.bottom, 20)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.bottom, 20)
            
            if isLoginFailed {
                Text("Invalid username or password")
                    .foregroundColor(.red)
                    .padding(.bottom, 10)
            }
            
            Button(action: {
                // Perform login authentication here
                if username == "admin" && password == "password" {
                    // Successful login, navigate to next screen
                    print("Login successful!")
                } else {
                    // Failed login attempt
                    isLoginFailed = true
                }
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding(.bottom, 20)
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

