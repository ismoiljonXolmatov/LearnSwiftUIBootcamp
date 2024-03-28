//
//  FocusBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 09.01.2024.
//

import SwiftUI

struct FocusBootcamp: View {
    
    enum FieldOnFocus: Hashable {
        case username
        case password
    }
    
    @State var username: String = ""
    @State var password: String = ""
    
    @FocusState var fieldOnFocus: FieldOnFocus?
    var body: some View {
        VStack(spacing: 30) {
            TextField("Username is here...", text: $username)
                .frame(height: 50)
                .padding(.horizontal)
                .background(Color.gray.brightness(0.2))
                .cornerRadius(10)
                .focused($fieldOnFocus, equals: .username)
            
            SecureField("Password is here...", text: $password)
                .frame(height: 50)
                .padding(.horizontal)
                .background(Color.gray.brightness(0.2))
                .cornerRadius(10)
                .focused($fieldOnFocus, equals: .password)
                
            
            Button {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
        
                if usernameIsValid && passwordIsValid {
                 print("Signed Up successfully")
                } else if usernameIsValid {
                    fieldOnFocus = .password
                } else {
                    fieldOnFocus = .username
                }
            } label: {
              Label("Sign up 🐣", image: "person.fill.checkmark")
            }
        }
        .padding(30)
    }
}

struct FocusBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusBootcamp()
    }
}
