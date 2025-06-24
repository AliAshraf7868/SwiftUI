//
//  ContextMenuBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgoundColor: Color = .blue
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Hello, World!")
                .font(.headline)
            Text("How to use Context Menu")
            
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgoundColor.cornerRadius(30))
        .contextMenu {
            Button(action: {
                self.backgoundColor = .red
            }) {
                Text("Change Color to Red")
            }
            Button(action: {
                self.backgoundColor = .green
            }) {
                Text("Change Color to Green")
            }
            Button {
                print("Share item")
            } label: {
                Text("Share")
                Image(systemName: "square.and.arrow.up")
            }

        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
