//
//  textFieldBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 04.01.2024.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Here is text field placeholder...", text: $textFieldText)
                    .padding()
        //            .textFieldStyle(.roundedBorder)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundColor(.primary)
                .font(.headline)
                Button {
                    saveText()
                } label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isValidtext() ? Color.blue : Color.gray)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
                .disabled(!isValidtext())
                Spacer()

            }
            .padding()
            .navigationTitle("Text field Bootcamp")
            
            List {
                ForEach(dataArray, id: \.self) { text in
                    Text(text)
                }
            }
        }
    }
    
    func isValidtext() -> Bool {
        if textFieldText.count >= 3 {
            return true
        } else {
            return false
        }
        
    }
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
