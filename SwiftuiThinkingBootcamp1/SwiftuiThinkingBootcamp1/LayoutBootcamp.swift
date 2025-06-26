//
//  LayoutBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct LayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    var body: some View {
        Text("Horizontal Size Class: \(horizontalSizeClass.debugDescription)")
        Text("Vertical Size Class: \(verticalSizeClass.debugDescription)")
        
        let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
        layout {
            Text("Apple")
            Text("Banana")
            Text("Orange")
        }
//        if horizontalSizeClass == .compact {
//            VStack {
//                Text("Apple")
//                Text("Banana")
//                Text("Orange")
//            }
//        } else {
//            HStack {
//                Text("Apple")
//                Text("Banana")
//                Text("Orange")
//            }
//        }
    }
}

#Preview {
    LayoutBootcamp()
}
