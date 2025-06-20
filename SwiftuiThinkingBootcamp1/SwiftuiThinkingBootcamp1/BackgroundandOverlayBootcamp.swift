//
//  BackgroundandOverlayBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 19/06/2025.
//

import SwiftUI

struct BackgroundandOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [Color.blue, Color.red], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120)
//            )
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 200, height: 200)
//            .overlay(
//                Text("Test")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.yellow)
//                    .frame(width: 220, height: 220)
//            )
        Rectangle()
            .fill(Color.yellow)
            .frame(width: 300, height: 300)
            .overlay(alignment: .center) {
                Rectangle()
                    .fill(Color.pink)
                    .frame(width: 200, height: 200, alignment: .topLeading)
                    
            }
            .background(
                Rectangle()
                    .frame(width: 320, height: 320, alignment: .top)
            )
    }
}

#Preview {
    BackgroundandOverlayBootcamp()
}
