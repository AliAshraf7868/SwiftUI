//
//  KeyboardSubmitBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct KeyboardSubmitBootcamp: View {
    @State var text: String = ""
    var body: some View {
        VStack {
            TextField("Placeholder Text", text: $text)
                .padding()
                .submitLabel(.go)
                .onSubmit {
                    print(text)
                }
            TextField("Placeholder Text", text: $text)
                .padding()
                .submitLabel(.continue)
                .onSubmit {
                    print(text)
                }
            TextField("Placeholder Text", text: $text)
                .padding()
                .submitLabel(.next)
                .onSubmit {
                    print(text)
                }
            TextField("Placeholder Text", text: $text)
                .padding()
                .submitLabel(.send)
                .onSubmit {
                    print(text)
                }
            TextField("Placeholder Text", text: $text)
                .padding()
                .submitLabel(.join)
                .onSubmit {
                    print(text)
                }
        }
        .padding()
    }
}

#Preview {
    KeyboardSubmitBootcamp()
}
