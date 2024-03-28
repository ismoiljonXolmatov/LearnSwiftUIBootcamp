//
//  DataPickerBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 05.01.2024.
//

import SwiftUI

struct DataPickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingdate: Date = Calendar.current.date(from: DateComponents(year: 2023)) ?? Date()
    let endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formattter = DateFormatter()
        formattter.dateStyle = .medium
        formattter.timeStyle = .short
           return formattter
    }
    var body: some View {
        VStack {
            DatePicker("Select a date",
                       selection: $selectedDate, in: startingdate...endingDate,
                       displayedComponents: [.date, .hourAndMinute] )
            .datePickerStyle(.automatic)
        .padding(.horizontal)
            HStack {
                Text("Selected Date: ")
                Text(dateFormatter.string(from: selectedDate))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .font(.headline)
            .cornerRadius(10)
            .padding(.horizontal)
        }
    }
}

struct DataPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DataPickerBootcamp()
    }
}
