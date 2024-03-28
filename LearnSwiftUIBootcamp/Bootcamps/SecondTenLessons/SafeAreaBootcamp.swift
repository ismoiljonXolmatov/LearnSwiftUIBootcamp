//
//  SafeAreaBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 28.12.2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(color: .secondary, radius: 10)
                        .padding()
                }
            }
        }
        .background(Color.orange)
//        .background(
//            Color.green
//                .edgesIgnoringSafeArea(.all)
//        )
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
