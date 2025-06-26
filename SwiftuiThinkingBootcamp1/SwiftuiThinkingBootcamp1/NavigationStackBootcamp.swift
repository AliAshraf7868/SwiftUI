//
//  NavigationStackBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    let fruits: [String] = ["Apples", "Bananas", "Oranges", "Pineapple"]
    @State var stackPath: [String] = []
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack {
                    Button("Go Forward") {
                        stackPath.append(contentsOf: [
                            "Cocunuts","Watermelon", "Strawberries"
                        ])
                    }
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text("Click me to see \(fruit)")
                        }
                    }
                }
            }
            .navigationTitle(Text("Fruits"))
            .navigationDestination(for: String.self) { fruit in
                MyScreenForNavigation(screenNo: fruit)
            }
        }
    }
}

struct MyScreenForNavigation: View {
    var screenNo: String
    
    init(screenNo: String) {
        self.screenNo = screenNo
        print("The screen number is \(screenNo)")
    }
    var body: some View {
        Text("Friut: \(screenNo)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
