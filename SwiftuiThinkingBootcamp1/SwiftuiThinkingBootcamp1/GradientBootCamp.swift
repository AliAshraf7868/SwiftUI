//
//  GradientBootCamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 18/06/2025.
//

import SwiftUI

struct GradientBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [.blue,.purple,.pink, .red]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
//                RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topLeading, startRadius: 50, endRadius: 200)
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, angle: .degrees(30))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBootCamp()
}
