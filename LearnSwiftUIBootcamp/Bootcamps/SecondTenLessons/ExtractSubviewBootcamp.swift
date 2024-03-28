//
//  ExtractSubviewBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 28.12.2023.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack {
            Color.brown.ignoresSafeArea()
            contentLayer
        }
    }
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples here", count: 439, color: .green)
            MyItem(title: "Bananes here", count: 349, color: .yellow)
            MyItem(title: "Orange here", count: 473, color: .orange)
        }
    }
}

struct ExtractSubviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootcamp()
    }
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
