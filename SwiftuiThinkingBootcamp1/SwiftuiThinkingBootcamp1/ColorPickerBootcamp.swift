//
//  ColorPickerBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor: Color = .blue
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(edges: .all)
            ColorPicker(
                "Select a color",
                selection: $backgroundColor,
                supportsOpacity: true)
            .padding()
            .background(Color.black)
            .foregroundStyle(.white)
            .font(.headline)
            .padding(.horizontal)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
