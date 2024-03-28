//
//  OnboardingView.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 08.01.2024.
//

import SwiftUI

struct OnboardingView: View {
    // Oboarding status
    /*
     0-Welcome screen
     1-Add name
     2-Add age
     3-Add gender
     */
    
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for Alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    //Appstorage
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn = false

    var body: some View {
        ZStack {
            // Content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.blue)
                }
            }
            
            //Buttons
            VStack {
                Spacer()
                signInButton
            }
            .alert(isPresented: $showAlert) {
                return Alert(title: Text(alertTitle))
            }

        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().background(Color.purple)
    }
}


extension OnboardingView {
    private var welcomeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find yuor match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                }
            Text("This is the #1 app for finding you match online! In this tutorial we practcing using AppStorage and other SWiftUI techniques")
                .foregroundColor(.white)
                .fontWeight(.semibold)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(25)
    }
    
    private var signInButton: some View {
        Text(
            onboardingState == 0 ? "Sign in" :
                onboardingState == 3 ? "Finish" : "Next"
        )
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal)
            .onTapGesture {
                handleSigninButton()
            }
    }
    
    
    private var addNameSection: some View {
        VStack(spacing: 30) {
            Spacer()
            Text("What's your name ?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name is....", text: $name)
                .foregroundColor(.primary)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal)
            Spacer()
            Spacer()
        }
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 30) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
                .padding(.horizontal)
            Spacer()
            Spacer()
        }
    }
    
    private var addGenderSection: some View {
        var pickerLabel: some View {
            Text("Your gender \(gender)")
                .font(.headline)
                .foregroundColor(.purple)
                .frame( height: 55)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(10)
        }
        
        return VStack(spacing: 40) {
            Spacer()
            Text("What's your gender ?")
                .font(.largeTitle)
                .fontWeight(.semibold )
                .foregroundColor(.white)
            Menu {
                Picker("Gender", selection: $gender) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Not-binery").tag("Not-binery")
                }
            } label: {
                pickerLabel
            }
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: - FUNCTION
extension OnboardingView {
    func handleSigninButton() {
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 letter 🫣")
                return
            }
            
        case 3:
            
            guard gender.count > 1 else {
                showAlert(title: "Pleace a gender before moving forward! 😕")
                return
            }
            
        default:
            break
        }
        
        //GO TO NEXT SECTION
        if onboardingState == 3 {
            // Signed in
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
        
            
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
}
