//
//  TabViewBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State private var selectedTabIndex = 0
    let icons: [String] = ["house", "cart", "book", "person", "gear","globe"]
    var body: some View {
        
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [.blue, .purple]), center: .center, startRadius: 5, endRadius: 400)
                
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
//        TabView {
//            ForEach(0..<icon.count) { index in
//                Text("Tab \(index)")
//                    .tabItem {
//                        Image(systemName: self.icon[index])
//                        Text("Tab \(index)")
//                    }
//            }
//        }
        
        
        
        
        
//        TabView {
//            RoundedRectangle(cornerRadius: 20)
//                .foregroundStyle(.red)
//            RoundedRectangle(cornerRadius: 20)
//                .foregroundStyle(.blue)
//            RoundedRectangle(cornerRadius: 20)
//                .foregroundStyle(.green)
//        }
//        .tabViewStyle(PageTabViewStyle())
        
        
        
        
//        TabView(selection: $selectedTabIndex) {
//            
//            HomeView(selectedTabIndex: $selectedTabIndex)
//            .tabItem {
//                Image(systemName: "house")
//                Text("Home")
//            }
//            .tag(0)
//            Text("Second Tab")
//                .tabItem {
//                    Image(systemName: "cart")
//                    Text("Cart")
//                }
//                .tag(1)
//            Text("Third Tab")
//                .tabItem {
//                    Image(systemName: "bookmark.fill")
//                    Text("Bookmarks")
//                }
//                .tag(2)
//        }
////        .accentColor(.custom)
//        .tint(.orange)
    }
}

struct HomeView: View {
    @Binding var selectedTabIndex: Int
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(edges: .top)
            VStack {
                Text("First Tab")
                    .foregroundStyle(.white)
                Button {
                    selectedTabIndex = 2
                } label: {
                    Text("Tap Me to change the tab")
                        .foregroundStyle(.green)
                }

            }
            
        }
    }
}

#Preview {
    TabViewBootcamp()
}
