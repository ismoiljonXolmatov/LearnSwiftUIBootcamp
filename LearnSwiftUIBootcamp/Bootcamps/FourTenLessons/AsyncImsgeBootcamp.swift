//
//  AsyncImsgeBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 09.01.2024.
//

import SwiftUI

struct AsyncImsgeBootcamp: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        
        AsyncImage(url: url) { result in
            switch result {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark.app.fill")
            @unknown default:
                fatalError()
            }
        }
        
//        AsyncImage(url: url) { image in
//           image
//                .resizable()
//                .scaledToFit()
//                .cornerRadius(20)
//        } placeholder: {
//            ProgressView()
//        }
//        .scaledToFit()
//        .foregroundColor(.green)
//        .frame(width: 350, height: 350)

    }
}

struct AsyncImsgeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImsgeBootcamp()
    }
}
