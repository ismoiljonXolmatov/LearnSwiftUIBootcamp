//
//  NavigationViewBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 02.01.2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(1..<5) { i in
                    NavigationLink(value: i) {
                        Label("Go to next page", image: "paperplane.fill")
                    }
                }
             }
            .navigationTitle("All Inboxs")
            .navigationDestination(for: Int.self) { value in
                MyNewScreen(value: value)
            }
        }
    }
}

struct MyNewScreen: View {
    let value: Int
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Text("New green screen \(value)")
                .offset(y: -50)
                .font(.largeTitle)
            NavigationLink("My 3rd New screen") {
                MyNewThridScreen()
            }
        }
    }
}

struct MyNewThridScreen: View {
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            Text("New orange screen")
                .font(.largeTitle)
        }
    }
}


struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
