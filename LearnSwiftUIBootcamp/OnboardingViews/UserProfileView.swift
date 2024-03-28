//
//  ProfileView.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 08.01.2024.
//

import SwiftUI

struct UserProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn = false
    
    var body: some View {
        VStack(spacing: 25) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
            VStack(spacing: 10) {
                Text("Name: \(currentUserName ?? "unknow")")
                Text("Age: \(currentUserAge ?? 0)")
                Text("Gender: \(currentUserGender ?? "unknow")")
            }
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.primary)
            
            Button {
                signOut()
            } label: {
                Label("Sign out", image: "rectangle.portrait.and.arrow.forward")
                    .font(.headline)
                    .foregroundColor(.primary)
            }
            .frame(maxWidth: .infinity)
            .padding(.all)
            .background(Color.red.opacity(0.7))
            .cornerRadius(10)
            .padding(.horizontal)
        }
        
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        currentUserSignedIn = false
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
