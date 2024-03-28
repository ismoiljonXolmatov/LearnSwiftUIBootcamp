//
//  ColorsBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 26.12.2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(UIColor.orange)
//                Color(UIColor.secondarySystemBackground)
//                Color(#colorLiteral(red: 0.17, green: 0.99, blue: 0.17, alpha: 0.3))
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.8),
                    radius: 20, x: -20, y: -20)

        
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
