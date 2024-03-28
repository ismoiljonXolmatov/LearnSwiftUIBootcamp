//
//  GridBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 28.12.2023.
//

import SwiftUI

struct GridBootcamp: View {
    let colums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            LazyVGrid(columns: colums, alignment: .center, spacing: nil, pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(0..<10) { i in
                        Rectangle().frame(height: 150)
                    }
                } header: {
                    Text("Section")
                        .foregroundColor(.green)
                         .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                }
                Section {
                    ForEach(0..<50) { i in
                        Rectangle().frame(height: 150)
                    }
                } header: {
                    Text("Section")
                        .foregroundColor(.blue)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.gray)
                        .padding()
                }
            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
