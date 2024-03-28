//
//  ContexMenuBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 04.01.2024.
//

import SwiftUI

struct ContexMenuBootcamp: View {
    @State var backColor: Color = .green
    
    var body: some View {
        ZStack {
            backColor.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 10) {
                Image(systemName: "house.fill")
                    .font(.largeTitle)
                Text("Ismoiljon Xolmatov")
                    .font(.headline)
                Text("Long press here")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(30)
            .background(Color.orange)
            .cornerRadius(20)
            .contextMenu {
                Button {
                    backColor = .indigo
                } label: {
                    Label("Edit post", systemImage: "pencil")
                }
                Button {
                    backColor = .purple
                } label: {
                    Label("Report post", systemImage: "exclamationmark.bubble.fill")

                }
                Button {
                    backColor = .yellow
                } label: {
                    Label("Copy selection text", systemImage: "doc.on.doc.fill")
                    
                }
                Button {
                    backColor = .mint
                } label: {
                    Label("Delete post", systemImage: "trash.fill")

                }
            }
        }
    }
}


struct ContexMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContexMenuBootcamp()
    }
}
