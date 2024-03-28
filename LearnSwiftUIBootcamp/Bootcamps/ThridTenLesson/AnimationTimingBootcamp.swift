//
//  AnimationTimingBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 30.12.2023.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    @State var linierGradient: LinearGradient = LinearGradient(
        gradient: Gradient(colors: [.orange, .yellow, .red, .green]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    var body: some View {
        VStack {
            Button("Animate views") {
                isAnimating.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: 10)
                .fill(linierGradient)
                .frame(width: isAnimating ? 50 : 350, height: 100)
                .animation(.spring(response: 0.5, dampingFraction: 0.6))
           
            Spacer()
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
