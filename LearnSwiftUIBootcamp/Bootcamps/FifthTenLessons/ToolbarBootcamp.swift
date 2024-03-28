//
//  ToolbarBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 09.01.2024.
//

import SwiftUI

struct ToolbarBootcamp: View {
    @State var text: String = ""
    @State var paths: [String] = []

    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                ScrollView {
                    TextField("Something to write..", text: $text)
                    
                    ForEach(1..<20) { _ in
                      RoundedRectangle(cornerRadius: 20)
                            .fill(.pink)
                            .frame(width: 300, height: 300)
                    }
                }
             //   .toolbarBackground(.hidden, for: .navigationBar)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button("Settings") {
                        }
                        .tint(.primary)
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                   Image(systemName: "gearshape.fill")
                }
            }
            .toolbarTitleMenu {
                Button("Button") {
                    paths.append("Screen 1")
                }
                Button("Button") {
                    paths.append("Screen 1")
                }
                Button("Button") {
                    paths.append("Screen 1")
                }
            }
            .navigationTitle("Toolbar Bootcamp")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
