//
//  EnviromantObjectBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 08.01.2024.
//

import SwiftUI
//ObservedObject
//StateObject
//EnviromentObject

class EnviromentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
       getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["Iphone", "Ipad", "MacBook", "Iwatch"])
    }
}

struct EnviromantObjectBootcamp: View {
    @StateObject var viewModel: EnviromentViewModel = EnviromentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { phone in
                    NavigationLink {
                        DetailView(selecteedItem: phone)
                    } label: {
                        Text(phone)
                    }
                }
            }
            .navigationTitle("Ios devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selecteedItem: String
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            NavigationLink {
                FinalView()
            } label: {
                Text(selecteedItem)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(20)
            }
        }
        .navigationTitle("Detail view")
    }
}


struct FinalView: View {
    @EnvironmentObject var viewModel: EnviromentViewModel
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.gray, .green]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) {
                        phone in
                        Text(phone)
                    }
                }
                .font(.title)
                .foregroundColor(.white)
            }
        }
    }
}

struct EnviromantObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnviromantObjectBootcamp()
    }
}
