//
//  BackgroundAndOverlayBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 26.12.2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        //        MARK: - Image
        Image(systemName: "paperplane.fill")
            .font(.system(size: 60))
            .foregroundColor(.white)
            .background(
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.red.opacity(04), .purple.opacity(09)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .shadow(color: .purple.opacity(01), radius: 10, x: 0, y: 10)
                .frame(width: 100, height: 100, alignment: .bottomTrailing)
                .overlay(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 30, height: 30)
                    .overlay(
                    Text("5")
                        .foregroundColor(.white)
                        .font(.headline)
                    )
                    .shadow(color: .purple.opacity(01), radius: 10, x: 10, y: 0)
                ,alignment: .bottomTrailing
                )
            )
        
//        MARK: - Rectangle
//        Rectangle()
//            .fill(Color.red)
//            .frame(width: 130, height: 130)
//            .overlay(
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 50,
//                       height: 50,
//                       alignment: .topLeading)
//            )
//            .background(
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150),
//            alignment: .bottomTrailing
//            )
        
        //        MARK: - Text
//        Text("Hello, World!")
//            .background(
////                Color.red
////                LinearGradient(gradient: Gradient(colors: [.green, .red]),  startPoint: .topLeading, endPoint: .bottomTrailing)
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [.blue, .cyan]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [.mint, .red]), startPoint: .top, endPoint: .bottom)
//                    )
//                    .frame(width: 120, height: 120, alignment: .center)
//
//            )
        
//        MARK: - Circle
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 200, height: 200, alignment: .center)
//            .overlay(
//            Text("Ismail")
//                .foregroundColor(.blue)
//                .font(.largeTitle)
//            )
//            .frame(width: 210, height: 210, alignment: .center)
//            .background(
//                Circle()
//                .fill(Color.green)
//            )

    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
