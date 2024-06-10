//
//  WelcomeView.swift
//  onlineappwithunal
//
//  Created by Ünal Foçadan on 9.06.2024.
//

import SwiftUI

struct WelcomeView: View {
    @State private var launchScreenMessage: String = "Loading..."
    @State private var showLaunchScreen: Bool = true
    @State private var showButtons: Bool = false
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    @State private var phoneNumber: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                if showLaunchScreen {
                    LaunchScreenView(launchScreenMessage: $launchScreenMessage)
                        .onAppear {
                            // Simulate network loading or initialization
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                launchScreenMessage = "Welcome to the AppWithUnal!"
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    showLaunchScreen = false
                                    showButtons = true
                                }
                            }
                        }
                } else {
                    if showButtons {
                        VStack {
                            
                            // Title
                            Text("Connect with AppWithUnal")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.top, 20)
                            
                            // Phone number input field
                            HStack {
                                Text("+90")
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(5)
                                
                                TextField("Enter Mobile", text: $phoneNumber)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(5)
                            }
                            .padding(.horizontal)
                            .padding(.top, 10)
                            
                            // Or connect with social media
                            Text("Or connect with social media")
                                .foregroundColor(.gray)
                                .padding(.top, 20)
                            
                            // Get Started with Email button
                            NavigationLink(destination: LoginView()) {
                                Text("Get Started with Email")
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.green)
                                    .cornerRadius(10)
                            }
                            .padding(.horizontal)
                            .padding(.top, 10)
                            
                            // Google button
                            Button(action: {
                                alertMessage = "Continue with Google"
                                showAlert = true
                            }) {
                                HStack {
                                    Image(systemName: "link") // Replace with the Google logo if available
                                    Text("Continue with Google")
                                }
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(10)
                            }
                            .padding(.horizontal)
                            .padding(.top, 10)
                            
                            // Github button
                            Button(action: {
                                alertMessage = "Continue with Github"
                                showAlert = true
                            }) {
                                HStack {
                                    Image(systemName: "link") // Replace with the Github logo if available
                                    Text("Continue with Github")
                                }
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.black)
                                .cornerRadius(10)
                            }
                            .padding(.horizontal)
                            .padding(.top, 10)
                            
                            Spacer()
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text(alertMessage))
                        }
                    }
                }
            }
            .navigationBarTitle("") // This hides the navigation bar title
                        .navigationBarHidden(true) // This hides the navigation bar
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
