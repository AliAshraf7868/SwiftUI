//
//  AnimationsBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 20/06/2025.
//

import SwiftUI

struct AnimationsBootcamp: View {
    
    @State var isAnimating = false
    
    var body: some View {
        VStack {
            Button {
                withAnimation(Animation.default.repeatCount(1)) { //Animation.default.delay(0.2)
                    isAnimating.toggle()
                }
            } label: {
                Text("Animate")
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimating ? 50 : 25)
                .fill( isAnimating ? Color.orange : Color.green)
                .frame(
                    width: isAnimating ? 100 : 300,
                    height: isAnimating ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                .offset(y: isAnimating ? 300 : 0)
            Spacer()
        }

    }
}

#Preview {
    AnimationsBootcamp()
}
