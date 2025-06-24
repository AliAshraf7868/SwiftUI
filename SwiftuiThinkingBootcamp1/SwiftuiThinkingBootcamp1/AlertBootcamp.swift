//
//  AlertBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct AlertBootcamp: View {
    @State private var showAlert = false
    @State private var backgroundColor: Color = .white
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button("Show Alert") {
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert) {
                    getAlet()
        
                }
            }
        }
    }
    
    func getAlet() -> Alert {
        Alert(
            title: Text("Title"),
            message: Text("This is a message"),
            primaryButton: .destructive(Text("DELETE"), action: {
                backgroundColor = .primary
            }),
            secondaryButton: .cancel())
        //            Alert(title: Text("Hello"), message: Text("World"))
    }
}

#Preview {
    AlertBootcamp()
}
