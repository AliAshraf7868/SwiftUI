//
//  MenuBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("Click Me") {
            Button("First") {}
            
            Button("Second") {}
            Button("Third") {}
            Button("Fourth") {}
        }
    }
}

#Preview {
    MenuBootcamp()
}
