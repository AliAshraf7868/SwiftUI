//
//  ContentView.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 18/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
            Text ("Hello, World".uppercased())
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
            //.underline (true, color: Color. red)
//                .italic()
//                .strikethrough (true, color: Color.green)
//                .font(.system(size: 24, weight: .semibold, design: .serif))
//                .baselineOffset(10.0)
//                .kerning(1.0)
//                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
                .frame(width: 150, height: 100, alignment: .leading)
                .minimumScaleFactor(0.1)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
