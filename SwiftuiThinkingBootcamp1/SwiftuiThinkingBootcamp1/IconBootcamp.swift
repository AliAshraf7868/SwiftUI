//
//  IconBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 18/06/2025.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "sun.max.fill")
            .resizable()
            .renderingMode(.original)
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
            .scaledToFill()
//            .font(.title2)
            .font(.system(size: 100))
            .foregroundColor(Color.red)
            .frame(width: 300, height: 300)
            .clipped()
    }
}

#Preview {
    IconBootcamp()
}
