//
//  GroupBootCamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct GroupBootCamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.largeTitle)
            .foregroundStyle(.green)
        }
        .font(.title)
        .foregroundStyle(.blue)
    }
}

#Preview {
    GroupBootCamp()
}
