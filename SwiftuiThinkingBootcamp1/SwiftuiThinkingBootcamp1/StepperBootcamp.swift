//
//  StepperBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct StepperBootcamp: View {
    @State private var count = 0
    @State var size: CGFloat = 50
    @State var tooLarge: Bool = false
    @State var tooSmall: Bool = false
    var body: some View {
        Text("User entered: \(count)")
//        Stepper("Steper", value: $count, in: -5...10)
//            .padding()
        Circle()
            .fill(Color.red)
            .frame(width: size)
        Spacer()
        if tooLarge || tooSmall {
            Text(tooLarge ? "Too Large" : "Too Small")
                .font(.headline)
                .foregroundColor(.red)
        }
        Stepper("Steper 2") {
            onIncrement()
        } onDecrement: {
            onDecrement()
        }
        .padding()
    }
    
    func onIncrement() {
        tooSmall = false
        if size >= UIScreen.main.bounds.width - 40 {
            tooLarge = true
            return
        }
        tooLarge = false
        withAnimation(.easeInOut) {
            size += 10
        }
    }
    
    func onDecrement() {
        tooLarge = false
        if size <= UIScreen.main.bounds.width/10 {
            tooSmall = true
            return
        }
        tooSmall = false
        withAnimation(.easeInOut) {
            size -= 10
        }
    }
}

#Preview {
    StepperBootcamp()
}
