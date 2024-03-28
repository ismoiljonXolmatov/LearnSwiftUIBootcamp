//
//  StateBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 28.12.2023.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundcolor: Color = .green
    @State var mytitle: String = "My title"
    @State var count: Int = 0
    var body: some View {
        ZStack {
            backgroundcolor
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Text(mytitle)
                Text("Count: \(count)")
                HStack(spacing: 20) {
                    Button("Pluss") {
                        backgroundcolor = .green
                        mytitle = "Pluss button was pressed"
                        count += 1
                    }
                    Button("Minuss") {
                        backgroundcolor = .red
                        mytitle = "Minuss button was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
