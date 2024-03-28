//
//  PopOverBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 01.01.2024.
//


//Sheet
//Animation
//Transition

import SwiftUI

struct PopOverBootcamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
//                MARK: - SHEET
//                .sheet(isPresented: $showNewScreen) {
//                    NewScreen()
//                }
//                 MARK: - TRANSITION
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//                Spacer()
            }
//             MARK: - OFFSETT
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height - 80)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button {
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding(20)
            }
        }
    }
}

struct PopOverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootcamp()
//        NewScreen()
    }
}
