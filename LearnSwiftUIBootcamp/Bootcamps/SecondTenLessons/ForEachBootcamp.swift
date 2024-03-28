//
//  ForEachBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 27.12.2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = []
    let myString = "Hello"
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
                HStack {
                   Circle()
                        .frame(width: 25, height: 25)
                    Text("Index is: \(index)")
               }
            }
        }
        .font(.title)
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
