//
//  GredientBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 26.12.2023.
//

import SwiftUI

struct GredientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //                Color.red
                //                LinearGradient(gradient: Gradient(colors: [Color.green, Color.orange, Color.yellow, Color.brown]), startPoint: .topLeading, endPoint: .bottomTrailing)
                RadialGradient(
                    gradient: Gradient(
                        colors: [Color.black,
                                 Color.blue,
                                 Color.red,
                                 Color.green]),
                    center: .leading,
                    startRadius: 5,
                    endRadius: 400)
//                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .bottom,
//                                angle: .degrees(180))
                
            )
            .frame(width: 300, height: 200)
    }
}

struct GredientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GredientBootcamp()
    }
}
