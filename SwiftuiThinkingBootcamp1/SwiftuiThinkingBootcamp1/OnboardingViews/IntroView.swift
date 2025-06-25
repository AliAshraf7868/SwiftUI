//
//  IntroView.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Text("SwiftUI Thinking Bootcamp")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    IntroView()
}
