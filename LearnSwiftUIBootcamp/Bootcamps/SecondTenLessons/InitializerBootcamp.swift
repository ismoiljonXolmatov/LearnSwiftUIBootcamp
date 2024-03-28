//
//  InitializerBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 27.12.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
    
        if fruit == .apple {
            title = "Apples"
            backgroundColor = .green
        } else {
            title = "Orange"
            backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 543, fruit: .orange)
            InitializerBootcamp(count: 1493, fruit: .apple)
        }
    }
}
