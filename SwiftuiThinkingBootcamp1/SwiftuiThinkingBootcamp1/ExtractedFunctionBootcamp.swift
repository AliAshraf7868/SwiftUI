//
//  ExtractedFunctionBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 20/06/2025.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    @State var backgroundColor: Color = .purple
    @State var title: String = "Purple"
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                HStack {
                    Button("Purple") {
                        changeColor(.purple)
                        title = "Purple"
                    }
                    
                    Button("Blue") {
                        changeColor(.blue)
                        title = "Blue"
                    }
                }
                .foregroundColor(.white)
            }
        }
    }
    func changeColor(_ newColor: Color) {
        backgroundColor = newColor
    }
}

#Preview {
    ExtractedFunctionBootcamp()
}
