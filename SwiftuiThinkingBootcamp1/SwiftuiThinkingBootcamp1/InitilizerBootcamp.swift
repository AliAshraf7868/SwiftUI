//
//  InitilizerBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 19/06/2025.
//

import SwiftUI

struct InitilizerBootcamp: View {
    
    let backgroundColor: Color
    let number: Int
    let name: String
    
    init(fruit: Fruit, number: Int, name: String) {
        self.backgroundColor = fruit == .apple ? .red : .green
        self.number = number
        self.name = name
    }
    
    enum Fruit {
        case apple
        case orange
    }
    var body: some View {
        VStack {
            Text("\(number)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(name)
                .font(.largeTitle)
                .foregroundColor(.white)
                
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(25)
    }
}

#Preview {
    InitilizerBootcamp(fruit: .apple, number: 5, name: "Apple")
}
