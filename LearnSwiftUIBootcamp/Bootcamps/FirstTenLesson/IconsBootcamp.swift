//
//  IconsBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 26.12.2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
      Image(systemName: "person.fill.badge.plus")
//            .resizable()
            .renderingMode(.original)
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
//            .scaledToFit()
//            .font(.largeTitle)
            .font(.system(size: 100))
//            .foregroundColor(Color.red)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
