//
//  PickerBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct PickerBootcamp: View {
    @State private var selectedItem: String = "Most Recent"
    let filterOption:[String] = ["Most Recent", "Most Popular", "Highest Rated"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selectedItem) {
            ForEach(filterOption.indices) { index in
                Text(filterOption[index]).tag(filterOption[index])
                    
            }
        } label: {
            Text("Picker")
        }
        .pickerStyle(SegmentedPickerStyle())
        .background(Color.red.opacity(0.2))
        
//            Menu {
//                ForEach(filterOption, id: \.self) { option in
//                    Button {
//                        selectedItem = option
//                    } label: {
//                        Label(option, systemImage: selectedItem == option ? "checkmark" : "")
//                    }
//                }
//            } label: {
//                HStack {
//                    Text("Filter: \(selectedItem)")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .padding()
//                        .padding(.horizontal)
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                        .shadow(radius: 5)
//                }
//            }
        }
//        VStack {
//            HStack {
//                Text("Selected: \(selectedItem)")
//            }
//            Picker(selection: $selectedItem) {
//                ForEach(18..<100) { number in
//                    Text("\(number)").tag(String(number))
//                        .foregroundStyle(.red)
//                }
//            } label: {
//                Text("Picker")
//            }
//            .pickerStyle(.inline)
//            .background(Color.gray.opacity(0.2))
//        }
//    }
}

#Preview {
    PickerBootcamp()
}
