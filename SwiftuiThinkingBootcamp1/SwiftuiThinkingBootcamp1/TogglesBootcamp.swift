//
//  TogglesBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct TogglesBootcamp: View {
    @State private var isOn = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(isOn ? "Online" : "Offline")
            }
            Toggle(isOn: $isOn,
            label: {
                Text("Label")
                    
            })
            .toggleStyle(SwitchToggleStyle(tint: .custom))
            Spacer()
            
            
        }
        .padding()
    }
}

#Preview {
    TogglesBootcamp()
}
