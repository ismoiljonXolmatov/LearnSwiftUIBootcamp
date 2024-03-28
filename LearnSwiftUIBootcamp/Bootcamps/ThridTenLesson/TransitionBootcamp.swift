//
//  TransitionBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 30.12.2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
                if showView {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
                        .animation(.spring())
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
