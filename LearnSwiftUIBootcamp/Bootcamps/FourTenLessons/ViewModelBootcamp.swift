//
//  ViewModelBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 07.01.2024.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

struct ViewModelBootcamp: View {
//    MARK: - @Observedobject also can be used here
//    differenceis between @StateObject and @Observed object
//    ObserbedObject Class's data also will be reload when something
//    reload in that View
   @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isloading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text(fruit.name)
                            Spacer()
                            Text("\(fruit.count)")
                                .foregroundColor(.orange)
                        }
                        .font(.headline)
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }

            .navigationTitle("Fruits")
            .navigationBarItems(trailing: NavigationLink(destination: {
                RandomScreen(fruitViewModel: fruitViewModel)
            }, label: {
                Image(systemName: "arrowshape.right.fill")
            }))
        }
        
    }
    
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}


class FruitViewModel: ObservableObject {
   @Published var isloading: Bool = false
   @Published var fruits: [FruitModel] = []
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Watermelon", count: 34)
        let fruit2 = FruitModel(name: "Banana", count: 458)
        let fruit3 = FruitModel(name: "Apple", count: 98)
        let fruit4 = FruitModel(name: "Ornage", count: 324)
        isloading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.fruits.append(fruit4)
            self.isloading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct RandomScreen: View {
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        VStack {
            Text(" Here is data that througed from last screen")
            
            VStack {
                ForEach(fruitViewModel.fruits) { fruit in
                    Text(fruit.name)
                }
            }
        }
    }
}
