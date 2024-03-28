//
//  ImageBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 26.12.2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
      Image("myImage")
//            .renderingMode(.template)
            .resizable()
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(15)
            .clipShape(
//                Capsule()
                Circle()
//                RoundedRectangle(cornerRadius: 22)
            )
            .foregroundColor(.red)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
