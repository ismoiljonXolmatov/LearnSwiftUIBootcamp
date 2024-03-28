//
//  PaddingAndSpacerBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 27.12.2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack {
            Text( "Hello world !!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            Text( "This is description to read, and you can read it widly, we you going to merry, you getting old!!")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .cornerRadius(10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .secondary, radius: 10, x: 0.0, y: 10)
                .frame(width: .infinity, height: 300)
        )
        .padding(.horizontal, 10)
        
        
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
