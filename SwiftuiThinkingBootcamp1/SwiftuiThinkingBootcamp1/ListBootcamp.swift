//
//  ListBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana", "mango", "peach"]
    @State var vegetables: [String] = ["carrot", "broccoli", "spinach", "beetroot", "tomato"]
    var body: some View {
        NavigationStack {
            List {
                Section  (
                    header:
                        Text("Fruits")
                        .font(.headline)
                        .foregroundColor(.orange)) {
                            ForEach(fruits, id: \.self) { fruit in
                                Text(fruit.capitalized)
                                    .foregroundColor(Color.white)
                            }
                            .onDelete(perform: deleteFruit)
                            .onMove(perform: moveFruit)
                            .listRowBackground(Color.blue)
//                            .onMove { indexSet, int in
//                                moveFruit(from: indexSet, to: int)
//                            }
//                            .onMove { indexSet, int in
//                                fruits.move(fromOffsets: indexSet, toOffset: int)
//                            }
                        }
                Section(header:
                            Text("Vegetable")
                                .font(.headline)
                                .foregroundColor(.red)) {
                    ForEach(vegetables, id: \.self) { vegetable in
                        Text(vegetable.capitalized)
                    }
                }
            }
            .navigationTitle("Grocery List")
            
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
            
        }
        .accentColor(Color.green)
    }
    
    var addButton: some View {
        Button("Add") {
            addFruit()
        }
    }
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func moveFruit(from: IndexSet, to: Int) {
        fruits.move(fromOffsets: from, toOffset: to)
    }
    
    func addFruit() {
        fruits.append("New Fruit")
    }
}

#Preview {
    ListBootcamp()
}
