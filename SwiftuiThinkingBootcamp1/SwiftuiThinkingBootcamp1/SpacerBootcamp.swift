//
//  SpacerBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 19/06/2025.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        ZStack {
            HStack(spacing: 10) {
                Spacer()
                    .frame(height: 10)
                    .background(Color.yellow)
                Rectangle()
                    .frame(width: 100, height: 100)
                Spacer()
                    .frame(height: 10)
                    .background(Color.yellow)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                Spacer()
                    .frame(height: 10)
                    .background(Color.yellow)
            }
            .background(Color.red)
            VStack() {
                Spacer()
                    .frame(width: 10)
                    .background(Color.yellow)
                Rectangle()
                    .frame(width: 100, height: 100)
                Spacer()
                    .frame(width: 10)
                    .background(Color.yellow)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                Spacer()
                    .frame(width: 10)
                    .background(Color.yellow)
            }
            .background(Color.red)
        }
        
    }
}

#Preview {
    SpacerBootcamp()
}
