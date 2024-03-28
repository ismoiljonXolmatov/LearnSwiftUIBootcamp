//
//  ScrollViewBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 28.12.2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(0..<10) { index in
                    Text("Title")
                        .font(.title)
                        .padding(.leading)
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25)
                                       .fill(Color.white)
                                       .frame(width: 250, height: 200)
                                       .shadow(color:  .secondary, radius: 10, x: 0, y: 0)
                                       .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
