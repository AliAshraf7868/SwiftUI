//
//  ImageBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 18/06/2025.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("network")
            .resizable()
            .scaledToFit()
//            .scaledToFill()
            .frame(width: 300, height: 300)
//            .clipped()
            .cornerRadius(150)
//            .clipShape(Circle())
    }
}

#Preview {
    ImageBootcamp()
}
