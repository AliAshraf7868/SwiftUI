//
//  SafeAreaBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 20/06/2025.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .background(Color.green)
        }
        .background(Color.green)
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.blue)
        
//    }
//    var body: some View {
//        VStack {
//            Text("Hello")
//            Spacer()
//        }
//        .background(Color.red) // Red stays inside safe area
//        .ignoresSafeArea()
    }


}

//struct SafeAreaBootcamp: View {
//    var body: some View {
//        VStack {
//            Text("Hello, World!")
//                .padding()
//                .background(Color.white)
//            Spacer()
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.blue)
////        .ignoresSafeArea() // Uncomment to push everything into unsafe areas
//    }
//}

//struct SafeAreaBootcamp: View {
//    var body: some View {
//        ZStack {
//            Color.blue
////                .ignoresSafeArea() // Background goes behind safe areas
//
//            VStack {
//                Text("Hello, World!")
//                    .padding()
//                    .background(Color.white) // Optional: make safe area content visible
//                Spacer()
//            }
//        }
//    }
//}



#Preview {
    SafeAreaBootcamp()
}
