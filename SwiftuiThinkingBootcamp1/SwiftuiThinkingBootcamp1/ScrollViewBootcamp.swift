//
//  ScrollViewBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 19/06/2025.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.horizontal,showsIndicators: false) {
//            HStack {
//                ForEach(0..<10) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame( width: 100, height: 100)
//                }
//
//            }
//        }
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { ind in
//                                Text("Item \(index * 20 + ind)")
//                                Spacer()
//                                Image(systemName: "chevron.right")
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame( width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    }
                    .padding()
                    
                }
                
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
