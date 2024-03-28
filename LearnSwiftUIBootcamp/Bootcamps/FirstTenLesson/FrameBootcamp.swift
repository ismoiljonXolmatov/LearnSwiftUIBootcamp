//
//  FrameBootcamp.swift
//  LearnSwiftUIBootcamp
//
//  Created by Khalmatov on 26.12.2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.blue)
            .frame(width: 200, alignment: .trailing)
            .background(Color.red)
            .frame(maxWidth: .infinity)
            .background(Color.gray)
            .frame(height: 200, alignment: .top)
            .background(Color.orange)
            .frame(maxHeight: 400, alignment: .bottom)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .bottomLeading)
            .background(Color.indigo)
        
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.orange)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
