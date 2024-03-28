//
//  TabBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 05.01.2024.
//

import SwiftUI

struct TabBootcamp: View {
    @State var selectionTabView: Int = 0
    var body: some View {
        TabView(selection: $selectionTabView) {
            HomeView(tabIndex: $selectionTabView)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
                .badge(34)
            BroweseView(tabIndex: $selectionTabView)
                .tabItem {
                    Label("Browese", systemImage: "globe")
                }
                .tag(1)
                .badge(554)
            ProfileView(tabIndex: $selectionTabView)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(2)
                .badge(883)
        }.tint(.red)
    }
}

struct HomeView: View {
    @Binding var tabIndex: Int
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            Text("Home Tab")
                .font(.largeTitle)
                .foregroundColor(.white)
            Button("Go to Nexrt Tab") {
                tabIndex = tabIndex+1
            }
            .offset(y: 50)
        }
    }
}

struct BroweseView: View {
    @Binding var tabIndex: Int
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            Text("Browese Tab")
                .font(.largeTitle)
                .foregroundColor(.white)
            Button("Go to Nexrt Tab") {
                tabIndex = tabIndex+1
            }
            .offset(y: 50)
        }
    }
}

struct ProfileView: View {
    @Binding var tabIndex: Int
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            Text("Profile Tab")
                .font(.largeTitle)
                .foregroundColor(.white)
            Button("Go to Nexrt Tab") {
                if tabIndex == 2 {
                    tabIndex = -1
                }
                tabIndex = tabIndex+1
            }
            .offset(y: 50)
        }
    }
}


struct TabBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabBootcamp()
    }
}


