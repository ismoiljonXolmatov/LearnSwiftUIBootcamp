//
//  IntroView.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 08.01.2024.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn = false
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.mint, .pink]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            if currentUserSignedIn {
                UserProfileView()
                    .transition(.move(edge: .leading))
            } else {
                OnboardingView()
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
