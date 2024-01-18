//
//  Login.swift
//  CrewCrafters
//
//  Created by user1 on 25/12/23.
//

import SwiftUI

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @ObservedObject var onboardingViewModel: OnboardingViewModel
    
    var body: some View {
        VStack {
            Text("Log In")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            TextField("Email Address", text: $email)
                .textFieldStyle(CustomTextFieldStyle())
                .padding(.bottom)
            
            ZStack(alignment: .trailingFirstTextBaseline) {
                if isPasswordVisible {
                    TextField("Password", text: $password)
                        .textFieldStyle(CustomTextFieldStyle())
                } else {
                    SecureField("Password", text: $password)
                        .textFieldStyle(CustomTextFieldStyle())
                }
                
                Button(action: {
                    isPasswordVisible.toggle()
                    if isPasswordVisible {
                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { _ in
                            isPasswordVisible = false
                        }
                    }
                }) {
                    Image(systemName: "eye")
                        .padding(.trailing, 10)
                        .foregroundColor(Color.gray)
                }
                .padding(.trailing, 20)
            }
            
            HStack(spacing: 0) {
                Button(action: {
                    
                }) {
                    Text("Forgot Password?")
                        .font(.subheadline)
                        .padding(.horizontal)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
            .padding(.bottom)
            
            if onboardingViewModel.currentUser.role == .participant {
                NavigationLink(destination: MainTabView()) {
                    Text("Sign In")
                }
                .simultaneousGesture(TapGesture().onEnded{
                    print("particiapnt")
                })
                .buttonStyle(NavigationButton())
                .navigationBarHidden(true)
            }
            else {
                NavigationLink(destination: OrganiserTabView()) {
                    Text("Sign In")
                }
                .simultaneousGesture(TapGesture().onEnded{
                    print("organiser")
                })
                .buttonStyle(NavigationButton())
                .navigationBarHidden(true)
            }
            
            
            HStack(spacing: 0) {
                Text("New around here? ")
                NavigationLink("Sign in", destination: SignIn(onboardingViewModel: onboardingViewModel).navigationBarHidden(true))
                    .foregroundColor(Color.blue)
            }
        }
        .padding()
    }
}

//#Preview {
//    Login()
//}
