//
//  OnAppearBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText: String = "Start text."
    @State var count: Int = 0
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { ind in
                        RoundedRectangle(cornerRadius: 25)
                            .frame( height: 200)
                            .padding(.all)
                            .onAppear() {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    self.myText = "Hello, World!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear : \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
