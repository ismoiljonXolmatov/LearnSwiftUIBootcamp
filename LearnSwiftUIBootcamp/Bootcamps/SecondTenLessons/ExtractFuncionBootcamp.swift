//
//  ExtractFuncionBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 28.12.2023.
//

import SwiftUI

struct ExtractFuncionBootcamp: View {
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            
            backgroundColor.ignoresSafeArea()
            
            contendLayer

        }
    }
    var contendLayer: some View {
        VStack {
            Text("tittle").font(.largeTitle)
            Button {
                buttonClicked()
            } label: {
                Text("Presss mee")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
         }
       }
    }
    
    func buttonClicked() {
        backgroundColor = .yellow
    }
}

struct ExtractFuncionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFuncionBootcamp()
    }
}
