//
//  AppstorageBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 08.01.2024.
//

import SwiftUI

struct AppstorageBootcamp: View {

    @AppStorage("name") var currentUserName: String?
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            if let name = currentUserName {
                Text(name)
            }
            Button("Save") {
                let name = "Alimardon"
               currentUserName = name
            }
        }
    }
}

struct AppstorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppstorageBootcamp()
    }
}
