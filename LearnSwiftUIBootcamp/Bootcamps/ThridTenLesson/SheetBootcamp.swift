//
//  SheetBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 31.12.2023.
//

import SwiftUI

struct SheetBootcamp: View {
    
    @State var showSheet: Bool = false
    @State var selectedDetent: PresentationDetent = .medium
    
    var body: some View {
        VStack {
            Button {
                showSheet.toggle()
            } label: {
                Text("Show sheet")
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                    .font(.headline)
            }.sheet(isPresented: $showSheet) {
                SecondScreen(selectedDetent: $selectedDetent)
//                    .prese ntationDetents([.height(300)])
                    .interactiveDismissDisabled()
            }
        }
    }
}

 struct SecondScreen: View {
    
    @Binding var selectedDetent: PresentationDetent
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green.ignoresSafeArea()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.black)
                Spacer()
                VStack(spacing: 30) {
                    Button("Large") {
                        selectedDetent = .large
                    }
                    Button("Medium") {
                        selectedDetent = .medium
                    }
                    Button("Fraction") {
                        selectedDetent = .fraction(0.2)
                    }
                }
                .presentationDetents([.medium, .fraction(0.2), .large], selection: $selectedDetent)
                .padding(.top)
                .font(.largeTitle)
                Spacer()
                Spacer()
            }
        }
    }
}

struct SheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamp()
    }
}
