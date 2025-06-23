//
//  AnimationTimingBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 20/06/2025.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating = false
    let time: Double = 10
    var body: some View {
        VStack {
            Button {
                withAnimation(Animation.spring.repeatCount(5)) { //Animation.default.delay(0.2)
                    isAnimating.toggle()
                }
            } label: {
                Text("Animate")
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill( isAnimating ? Color.orange : Color.green)
                .frame( width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: time))
            RoundedRectangle(cornerRadius: 20)
                .fill( isAnimating ? Color.orange : Color.green)
                .frame( width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: time))
            RoundedRectangle(cornerRadius: 20)
                .fill( isAnimating ? Color.orange : Color.green)
                .frame( width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: time))
            RoundedRectangle(cornerRadius: 20)
                .fill( isAnimating ? Color.orange : Color.green)
                .frame( width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: time))
            
        }

    }
}

#Preview {
    AnimationTimingBootcamp()
}
