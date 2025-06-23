//
//  TransitionBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 20/06/2025.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Show View") {
                    withAnimation(.easeOut) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showView ? 1 : 0)
//                    .transition(.asymmetric(insertion: .move(edge: .bottom),
//                                            removal: AnyTransition.opacity.animation(.easeInOut)))
                    .transition(.move(edge: .bottom))
//                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
