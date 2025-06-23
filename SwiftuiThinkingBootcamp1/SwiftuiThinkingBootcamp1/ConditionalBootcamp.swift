//
//  ConditionalBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 20/06/2025.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var isLoading: Bool = true
    @State var loadingButtonTitle = "Stop Loading"
    var body: some View {
        VStack {
            if isLoading {
                ProgressView()
                Text("Loading...")
            } else {
                Text("Loaded!")
            }
            Button(action: {
                self.isLoading.toggle()
                loadingButtonTitle = loadingButtonTitle == "Stop Loading" ? "Start Loading" : "Stop Loading"
            }) {
                Text(loadingButtonTitle)
            }
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
