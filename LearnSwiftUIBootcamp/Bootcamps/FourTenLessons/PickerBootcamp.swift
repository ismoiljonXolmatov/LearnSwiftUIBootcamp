//
//  PickerBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 05.01.2024.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most recent"
    @State var backgroundColor: Color = .green
    let filterOptions: [String] = [
    "Most liked",
    "Most favorite",
    "Most recent"
    ]
    let pickerImageNames: [String] = [
        "heart",
        "flame",
        "clock"
    ]
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
//                MARK: - GENERAL PICKER
                
                Picker(selection: $selection) {
                    ForEach(filterOptions.indices, id: \.self) { index in
                        HStack {
                            Text(filterOptions[index])
                            Image(systemName: pickerImageNames[index])
                        }.tag(filterOptions[index])
                    }
                } label: {
                }.pickerStyle(.menu)
                    .tint(.primary)
                    .font(.headline)
                
//                MARK: - COLOR PICKER
                ColorPicker("Pick a color", selection: $backgroundColor, supportsOpacity: true)
                    .padding()
                    .font(.headline)
                    .background(Color.primary)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }
        }

    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
