//
//  AnimationBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 30.12.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
               withAnimation(
                Animation
                    .default
                    .repeatCount(6)) {
                        isAnimated.toggle()
                    }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 10)
                .fill(isAnimated ? .green : .blue)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 180 : 0))
                .offset(y:isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
