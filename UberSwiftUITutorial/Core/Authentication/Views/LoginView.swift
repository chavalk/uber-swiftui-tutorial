//
//  LoginView.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/11/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                
                // Image and title
                VStack {
                    // Image
                    Image("uber-app-icon")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    // Title
                    Text("UBER")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                
                // Input fields
                VStack(spacing: 32) {
                    // Input field 1
                    VStack(alignment: .leading, spacing: 12) {
                        // Title
                        Text("Email Address")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.footnote)
                        
                        // Text field
                        TextField("name@example.com", text: $email)
                            .foregroundColor(.white)
                        
                        // Divider
                        Rectangle()
                            .foregroundColor(Color(.init(white: 1, alpha: 0.3)))
                            .frame(width: UIScreen.main.bounds.width - 32, height: 0.7)
                    }
                    
                    // Input field 2
                    VStack(alignment: .leading, spacing: 12) {
                        // Title
                        Text("Password")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.footnote)
                        
                        // Text field
                        TextField("Enter your password", text: $password)
                            .foregroundColor(.white)
                        
                        // Divider
                        Rectangle()
                            .foregroundColor(Color(.init(white: 1, alpha: 0.3)))
                            .frame(width: UIScreen.main.bounds.width - 32, height: 0.7)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Forgot Password?")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.top)
                            
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // Social sign in view
                VStack {
                    // Dividers + text
                    HStack(spacing: 24) {
                        Rectangle()
                            .frame(width: 76, height: 1)
                            .foregroundColor(.white)
                            .opacity(0.5)
                        
                        Text("Sign in with social")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                        
                        Rectangle()
                            .frame(width: 76, height: 1)
                            .foregroundColor(.white)
                            .opacity(0.5)
                    }
                    
                    // Sign up buttons
                    HStack(spacing: 24) {
                        Button {
                            
                        } label: {
                            Image("facebook-sign-in-icon")
                                .resizable()
                                .frame(width: 74, height: 44)
                        }

                        
                        Button {
                            
                        } label: {
                            Image("google-sign-in-icon")
                                .resizable()
                                .frame(width: 44, height: 44)
                        }
                    }
                }
                .padding(.vertical)
                
                Spacer()
                
                // Sign in button
                Button {
                    
                } label: {
                    HStack {
                        Text("SIGN IN")
                            .foregroundColor(.black)
                        
                        Image(systemName: "arrow.right")
                            .foregroundColor(.black)
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                .background(Color.white)
                .cornerRadius(10)
                
                // Sign up button
                
                Spacer()
                
                Button {
                    
                } label: {
                    HStack {
                        Text("Don't have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign Up")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.white)
                }

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
