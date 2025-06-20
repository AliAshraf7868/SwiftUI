//
//  PaddingAndSpacingBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 19/06/2025.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
//                .padding(.bottom, 20)
            Text("This is the description of the content on this screen. It is a long text that needs to be wrapped to multiple lines")
//                .padding()
//                .padding(.vertical, 10)
               
        }
        .padding()
        .background(
            Color.white.shadow(
                color: Color.black.opacity(0.2),
                radius: 10,
                x: 0,
                y: 0
            )
//                    .padding(.horizontal, 10)
        )
        
    }
}

#Preview {
    PaddingBootcamp()
}
