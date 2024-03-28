//
//  ActionSheetBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 04.01.2024.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showAlert: Bool = false
    @State var confirmationDialogOption: ConfirmationDialogOption = .otherPost
    
    enum ConfirmationDialogOption {
        case myPost
        case otherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 40, height: 40)
                Text("@username")
                Spacer()
                Button {
                    showAlert.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .tint(.primary)
                }
            }
            .padding(.horizontal, 8)
            Rectangle()
                .frame(width: .infinity, height: 400)
        }  
        .confirmationDialog(
            Text("Are you sure")
                .font(.title3),
            isPresented: $showAlert, titleVisibility: .visible) {
                switch confirmationDialogOption {
                case .myPost:
                    Button("Delete", role: .destructive) { print("Delete button clicked")}
                    Button("Copy") { print("Copy button clicked") }
                    Button("Move") { print("Move button clicked") }
                case .otherPost:
                    Button("Share", role: .destructive) { print("Delete button clicked")}
                    Button("Go profile") { print("Copy button clicked") }
                    Button("Report") { print("Move button clicked") }
                }
            } message: {
                Text("You can move, copy or delete this file")
            }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
