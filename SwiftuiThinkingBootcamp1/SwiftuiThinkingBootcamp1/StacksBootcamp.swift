//
//  StacksBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 19/06/2025.
//

import SwiftUI

struct StacksBootcamp: View {
//    Vstack, HStack & ZStack
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 130, height: 130)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    StacksBootcamp()
}
