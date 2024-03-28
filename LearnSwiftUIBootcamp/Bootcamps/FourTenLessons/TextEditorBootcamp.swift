//
//  TextEditorBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 04.01.2024.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditiorText: String = "Ths is text editor text"
    @State var savedText: String = ""
    @State var toggleIsOn = true
    var body: some View {
        NavigationStack {
            VStack  {
                TextEditor(text: $textEditiorText)
                    .frame(height: 350)
                    .cornerRadius(10)
                Button {
                 savedText = textEditiorText
                } label: {
                    Text("Save")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding()
                        .font(.headline)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Toggle(isOn: $toggleIsOn) {
                    Text("Toggle")
                        .textSelection(.enabled)
                     
                }
                .tint(.red)
                Text(savedText)
                Spacer()
             }
            .padding()
            .background(Color.green )
            .navigationTitle("Text editor bootcamp")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
