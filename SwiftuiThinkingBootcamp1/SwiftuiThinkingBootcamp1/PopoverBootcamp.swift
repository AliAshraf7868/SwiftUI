//
//  PopoverBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State private var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack {
                    Button("Show Popover") {
                        withAnimation(Animation.spring()) {
                            showNewScreen.toggle()
                        }
                        
                }
                    .font(.largeTitle)
                Spacer()
            }
            // Sheet Method
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            // Transition Method
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//    //                    .animation(.default)
//                }
//            }
//            .zIndex(2.0)
            
            // Only Animantion
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 20 : UIScreen.main.bounds.height)
            
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                    showNewScreen.toggle()
                }) {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding(20)
                }
            }
        }
    }
}

struct PopoverExample: View {
    var body: some View {
        
//        NewScreen()
    }
}

#Preview {
    PopoverBootcamp()
}
