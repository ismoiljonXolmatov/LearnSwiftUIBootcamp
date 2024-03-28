//
//  ButtonsBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 28.12.2023.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "This is my title"
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
                .font(.largeTitle)
            Button {
                title = "Sign up button clicked"
            } label: {
                Text("Sign up")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .shadow(radius: 10)
                            .cornerRadius(10))
            }
            Button {
                title = "Sign in button clicked"
            } label: {
                Text("Sign in")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.green
                            .shadow(radius: 10)
                            .cornerRadius(10)
                    )
            }
            
            Button {
                title = "Like tapped"
            } label: {
                Circle()
                    .frame(width: 80, height: 80)
                    .shadow(color: .secondary, radius: 10)
                    .overlay(
                     Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                     )
            }
            Button {
                title = "Finish tapped"
            } label: {
                Text("Finish")
                    .frame(width: 60, height: 50)
                    .shadow(color: .secondary, radius: 10)
                    .padding(.horizontal, 20)
                    .foregroundColor(.gray)
                    .background(
                     Capsule()
                        .stroke(Color.gray, lineWidth: 3)
                    )
            }
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            ButtonsBootcamp()
            ButtonsBootcamp()
        }
    }
}
