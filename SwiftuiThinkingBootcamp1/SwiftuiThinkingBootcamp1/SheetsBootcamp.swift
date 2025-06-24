//
//  SheetsBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State private var showSheet = false
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                showSheet.toggle()
            }) {
                Text("Show Sheet")
                    .font(.headline)
                    .foregroundStyle(.green)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
            }
//            .fullScreenCover(isPresented: $showSheet, content: { SecondScreen() })
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
            
        }
    }
}

#Preview {
    SheetsBootcamp()
}
