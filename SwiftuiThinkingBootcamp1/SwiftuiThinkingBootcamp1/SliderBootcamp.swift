//
//  SliderBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct SliderBootcamp: View {
    @State private var value: Double = 3
    @State var color: Color = .red
    var body: some View {
        Text(String(format: "%.1f", value))
            .foregroundColor(color)
//        Slider(value: $value, in: 0...100)
//        Slider(value: $value, in: 0...100, step: 0.5)
        Slider(
            value: $value,
            in: 1...5,
            onEditingChanged: { _ in
                color = .green
            },
            minimumValueLabel: Text("Min"),
            maximumValueLabel: Text("Max"),
            label: {
                Text("Value")
            })
            .padding()
            .accentColor(.red)
    }
}

#Preview {
    SliderBootcamp()
}
