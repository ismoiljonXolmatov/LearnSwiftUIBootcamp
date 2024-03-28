//
//  BackgroundMaterilalsBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 09.01.2024.
//

import SwiftUI

struct BackgroundMaterilalsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Hi")
            }
            .frame(height: 300)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .background(
        Image("toshbaqa")
            .scaledToFill()
        )
    }
}

struct BackgroundMaterilalsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterilalsBootcamp()
    }
}
