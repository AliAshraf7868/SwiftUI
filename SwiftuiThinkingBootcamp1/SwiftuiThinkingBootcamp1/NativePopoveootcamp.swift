//
//  NativePopoveootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct NativePopoveootcamp: View {
    @State var showPopover: Bool = false
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Button("click Me") {
                showPopover.toggle()
            }
            .padding()
            .background(Color.yellow.cornerRadius(8))
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.topTrailing)) {
                VStack {
                    Button("Dismiss") {
                        showPopover.toggle()
                    }
                }
                .presentationCompactAdaptation(.popover)
            }
//            .popover(isPresented: $showPopover) {
//                VStack {
//                    Button("Dismiss") {
//                        showPopover.toggle()
//                    }
//                }
//                .presentationCompactAdaptation(.popover)
//            }
        }
    }
}

#Preview {
    NativePopoveootcamp()
}
