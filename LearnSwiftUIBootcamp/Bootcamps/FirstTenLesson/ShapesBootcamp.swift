//
//  ShapesBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 26.12.2023.
//
import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Ellipse()
//        RoundedRectangle(cornerRadius: 50)
        Capsule(style: .circular)
//        Circle()
            .stroke(lineWidth: 3)
//            .trim(from: 0.0, to: 1.0)
            .frame(width: 212, height: 300, alignment: .top)
            .foregroundColor(.cyan)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
