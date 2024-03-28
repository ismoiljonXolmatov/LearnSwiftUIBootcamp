//
//  SpacerBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 27.12.2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                Spacer()
                    .frame(height: 10)
                    .background(Color.blue)
                
                Image(systemName: "gear")
                    .font(.largeTitle)
            }
            .background(Color.secondary)
            .padding()
            Spacer()
                .frame(width: 10)
                .background(Color.blue)
        }
//        .padding()
        .background(Color.green)
    }
}

//        HStack(spacing: 0) {
//            Spacer()
//                .frame(height: 10)
//                .background(Color.red)
//           Rectangle()
//                .frame(width: 100, height: 100)
//           Spacer()
//                .frame(height: 10)
//                .background(Color.red)
//            Rectangle()
//                .fill(Color.green)
//                 .frame(width: 100, height: 100)
//            Spacer()
//                 .frame(height: 10)
//                 .background(Color.red)
//            Rectangle()
//                .fill(Color.green)
//                 .frame(width: 100, height: 100)
//            Spacer()
//                 .frame(height: 10)
//                 .background(Color.red)
//        }

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
