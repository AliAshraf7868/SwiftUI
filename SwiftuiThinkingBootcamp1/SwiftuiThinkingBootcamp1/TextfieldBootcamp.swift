//
//  TextfieldBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFeild1 = ""
    @State var isValidTextFeald1: Bool = true
    @State var dataArray: [String] = []
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TextField("Please type here..", text: $textFeild1)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                if !isValidTextFeald1 {
                    Text("Please type more than 3 characters")
                        .foregroundColor(.red)
                        .font(.subheadline)
                }
                Button(action: {
                    isValidTextFeald1 = checkText()
                    if checkText() {
                        saveText()
                    }
                }) {
                    Text("Submit")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(!checkText() ? Color.gray : Color.blue)
                        .cornerRadius(10)
                        .font(.headline)
                }
                .disabled(!checkText())
                ForEach(dataArray, id: \.self) { item in
                    Text(item)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield Bootcamp")
        }
        
    }
    
    func checkText() -> Bool {
        return !textFeild1.isEmpty && textFeild1.count >= 3
    }
    func saveText() {
        dataArray.append(textFeild1)
        textFeild1 = ""
    }
}

#Preview {
    TextfieldBootcamp()
}
