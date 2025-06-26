//
//  ViewThatFitsBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red
            ViewThatFits {
                Text("This is the sameple text that is longer than the view")
                Text("This is the sameple text")
                Text("Sameple text")
            }
        }
        .frame(height: 300)
        .padding(50)
        .font(.largeTitle)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
