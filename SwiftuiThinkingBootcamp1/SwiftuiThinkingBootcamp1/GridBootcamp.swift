//
//  GridBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 19/06/2025.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 55)),
//        GridItem(.adaptive(minimum: 155)),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<100) { index in
                    ZStack {
                        Rectangle()
                            .frame(width: 55)
                            .foregroundColor(Color.blue)
                        Text("\(index)")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            
                    }
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridBootcamp()
}
