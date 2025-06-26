//
//  BadgesBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Item 1")
                .badge(10)
            Text("Item 2")
                .badge("new")
            Text("Item 3")
                .badge("Please check")
        }
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//                .badge("new")
//            Color.blue
//                .tabItem {
//                    Image(systemName: "cart")
//                    Text("Cart")
//                }
//                .badge(10)
//            Color.green
//                .tabItem {
//                    Image(systemName: "person.circle")
//                    Text("Profile")
//                }
//                .badge("Hi,")
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
