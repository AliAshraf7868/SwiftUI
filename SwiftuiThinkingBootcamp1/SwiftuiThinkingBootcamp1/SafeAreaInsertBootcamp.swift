//
//  SafeAreaInsertBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct SafeAreaInsertBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { index in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle(Text("SafeArea"))
            .navigationBarTitleDisplayMode(.automatic)
//            .overlay {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .padding()
//                    .background(Color.blue)
//               
//                ,alignment: .bottom
//            }
        }
        .safeAreaInset(edge: .top, alignment: .trailing) {
            Text("Hi")
                .frame(width: 30)
                .background(Color.red.ignoresSafeArea(.container))
                .clipShape(Circle())
                .padding(30)
        }
    }
}

#Preview {
    SafeAreaInsertBootcamp()
}
