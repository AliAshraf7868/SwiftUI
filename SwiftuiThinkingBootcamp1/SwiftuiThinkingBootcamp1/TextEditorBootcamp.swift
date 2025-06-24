//
//  TextEditorBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorTest: String = "This is the is first text editor"
    @State var saveText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorTest)
                    .frame(height: UIScreen.main.bounds.height * 0.25)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                Button(action: {
                    saveText = textEditorTest
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(saveText)
                Spacer()
            }
            .padding()
            .navigationBarTitle("Text Editor Bootcamp")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
