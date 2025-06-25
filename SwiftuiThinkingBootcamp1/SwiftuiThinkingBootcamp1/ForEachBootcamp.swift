//
//  ForEachBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 19/06/2025.
//

import SwiftUI

struct ForEachBootcamp: View {
    var data: [[String]] = [["0","1","2","3"],["4","5","6","7"],["8","9","10","11"]]
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
//                Text("\(index)")
                HStack {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.blue)
                    Text("\(index)")
                }
            }
            .padding()
//            ForEach (data.indices) { index in
//                Text("\(data[index]): \(index)")
//            }
        }
    }
}


//struct EditableListView: View {
//    @State private var items = ["A", "B", "C","C","D","E","F","G","H","I"]
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(items, id: \.self) { item in
//                    Text(item)
//                }
//                .onDelete { idx in
//                    items.remove(atOffsets: idx)
//                }
//                .onMove   { src, dst in
//                    items.move(fromOffsets: src, toOffset: dst)
//                }
//            }
//            .navigationBarItems(
//                leading: EditButton(),
//                trailing: Button("Add") {
//                    items.append("New \(Int.random(in: 1...1000))")
//                }
//            )
//        }
//    }
//}

#Preview {
    ForEachBootcamp()
}
