//
//  ModelBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 06.01.2024.
//

import SwiftUI

struct UserModel: Identifiable {
    var id: String = UUID().uuidString
    let isverified: Bool
    let name: String
    let username: String
    let follers: Int
}

struct ModelBootcamp: View {
    @State var users: [UserModel] = [
        UserModel(isverified: false, name: "Ismoil", username: "khalmatov", follers: 2300),
        UserModel(isverified: true, name: "Abduqodir", username: "Qodirali", follers: 549),
        UserModel(isverified: true, name: "Alimardon", username: "Ali", follers: 3489),
        UserModel(isverified: false, name: "Iskandar", username: "Zulqarnayn", follers: 5833),
        UserModel(isverified: true, name: "Hassan", username: "Khassan", follers: 238),
        UserModel(isverified: false, name: "Hussan", username: "Khussan", follers: 984)
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    CustomCellView(name: user.name, username: user.username, followers: user.follers, isverified: user.isverified)
                }
            }
            .navigationTitle("Mobil Developers")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
struct CustomCellView: View {
    @State var name: String
    @State var username: String
    @State var followers: Int
    @State var isverified: Bool
    var body: some View {
        HStack(spacing: 15) {
            Circle()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.headline)
                Text("@\(username)")
                    .font(.subheadline)
            }
            .font(.headline)
            .padding(0)
            Spacer()
            Image(systemName: isverified ? "checkmark.seal.fill": "")
                .foregroundColor(.blue)
            VStack {
                Text("Followers")
                Text("\(followers)")
            }
            
        }.frame(maxWidth: .infinity)
    }
}
