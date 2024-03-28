//
//  StacksBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 27.12.2023.
//

import SwiftUI

struct StacksBootcamp: View {
//    Vstacks -> Vertical
//    Hstacks -> Horizontal
//    Zstacks -> zIndex (back to front)
    var body: some View {
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 350, height: 600)
//            VStack(alignment: .leading) {
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(Color.mint)
//                    .frame(width: 120, height: 120)
//                HStack(alignment:  .top) {
//                    Rectangle()
//                        .fill(Color.cyan)
//                    .frame(width: 100, height: 100)
//                    Rectangle()
//                        .fill(Color.red)
//                    .frame(width: 80, height: 80)
//                    Rectangle()
//                        .fill(Color.gray)
//                    .frame(width: 60, height: 60)
//
//                }
//                .background(Color.white)
//            }
//            .background(Color.secondary)
//        }
        
//        VStack {
//            Text("5")
//                .font(.largeTitle)
//                .foregroundColor(.black)
//                .underline()
//            Text("Items in your card")
//                .font(.title3)
//                .foregroundColor(.black)
//
//        }
        VStack {
            ZStack {
                Circle()
                    .frame(width: 150, height: 150, alignment: .center)
                Text("Ismoil")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
            }
            Circle()
                .frame(width: 150, height: 150, alignment: .center)
                .overlay(
                    Text("Khalmatov")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                )
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
