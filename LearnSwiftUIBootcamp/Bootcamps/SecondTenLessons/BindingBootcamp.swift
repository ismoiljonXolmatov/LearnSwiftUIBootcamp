//
//  BindingBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 28.12.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "MY Title goes here"
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text(title)
                ButtonView(
                    backColor: $backgroundColor,
                    title: $title)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var backColor: Color
    @Binding var title: String
    
    @State var buttonBackColor: Color = .orange
    
    var body: some View {
        Button {
            backColor = .mint
            buttonBackColor = .blue
            title = "Button was pressed"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonBackColor)
                .cornerRadius(10)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
