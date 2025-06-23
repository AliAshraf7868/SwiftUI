//
//  ButtonsBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 20/06/2025.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title = "This is my title"
    var body: some View {
        VStack {
            
            Text(title)
                .font(.largeTitle)
            Button("Press me!"){
                title = "You pressed me!"
            }
            .accentColor(.red)
            Button(action: {
                title = "You Pressed #2"
            }, label: {
                Text("New title")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                title = "You Pressed #3"
            }, label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundColor(.white)
                    )


            })
            
            Button(action: {
                title = "You Pressed #4"
            }, label: {
                Text("Final Button".uppercased())
                    .font(.title)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray,style: StrokeStyle(lineWidth: 2))
                    )
            })
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
