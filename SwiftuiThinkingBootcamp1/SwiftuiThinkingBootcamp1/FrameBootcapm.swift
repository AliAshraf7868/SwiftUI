//
//  FrameBootcapm.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 19/06/2025.
//

import SwiftUI

struct FrameBootcapm: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100, height: 100)
            .background(Color.red)
            .frame(height: 100)
            .background(Color.brown)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 500, alignment: .bottom)
            .background(Color.orange)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
            
    }
}

#Preview {
    FrameBootcapm()
}
