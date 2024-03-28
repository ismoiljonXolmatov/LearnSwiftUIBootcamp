//
//  ListBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 04.01.2024.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "Apple", "Banana", "Orange", "Limon", "Mango"
    ]
    
    @State var veggies: [String] = [
        "Tomato", "Poteto", "Carrot"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .foregroundColor(.white)
                            .badge(fruit.count)
                            .swipeActions(edge: .leading,
                                allowsFullSwipe: true) {
                                Button("Share") {
                                    
                                }
                                .tint(.green)
                                Button("Copy") {
                                    
                                }
                                .tint(.blue)
                                Button("Report") {
                                    
                                }
                                .tint(.red)
                            }
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.indigo)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "applelogo")
                    }
                    .foregroundColor(.orange)
                    .font(.title3)
                }
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie)
                    }
                } header: {
                    Text("Veggies")
                }
            }
            .tint(.primary)
            .navigationTitle("Fruits List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)
        }
        .tint(.primary)
    }
    var addButton: some View {
        Button("Add", action: { add() })
    }
    func delete(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func move(from: IndexSet, to: Int) {
        fruits.move(fromOffsets: from, toOffset: to)
    }
    func add() {
        fruits.append("Peach")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
