//
//  StateBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 20/06/2025.
//

import SwiftUI

struct StateBootcamp: View {
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
                        backgroundColor = .purple
                        title = "Purple"
                    }
                    
                    Button("Blue") {
                        backgroundColor = .blue
                        title = "Blue"
                    }
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    StateBootcamp()
}
