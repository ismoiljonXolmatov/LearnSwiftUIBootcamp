//
//  AlertBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 04.01.2024.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = .yellow
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Error Loading video"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded 🥳"
//                    alertMessage = "Uploading the video successfully completed!"
//                    showAlert.toggle()
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(title: Text("Successfully uploaded 🥳"),
                         message: .none,
                         dismissButton: .destructive(Text("Change Color!"),
                                                      action: {
                backgroundColor = .green
            }))
         default:
           return Alert(title: Text("Error"))
        }
 
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
