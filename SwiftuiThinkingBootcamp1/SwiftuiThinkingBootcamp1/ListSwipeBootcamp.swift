//
//  ListSwipeBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct ListSwipeBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "Orange", "Mango"]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
                    .swipeActions(edge: .trailing) {
                        Button("Delete") {
                            
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("share") {
                            
                        }
                    }
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }
}

#Preview {
    ListSwipeBootcamp()
}
