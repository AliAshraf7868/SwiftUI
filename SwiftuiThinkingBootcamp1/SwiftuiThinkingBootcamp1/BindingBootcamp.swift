//
//  BindingBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 20/06/2025.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .red
    @State var title: String = "Old Title"
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            

        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor = Color.blue
    @Binding var title: String
    var body: some View {
        Button {
            backgroundColor = backgroundColor == .red ? .orange : .red
            buttonColor = buttonColor == .green ? .blue : .green
            title = title == "New Title" ? "Old Title" : "New Title"
        } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
