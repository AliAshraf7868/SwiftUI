//
//  ResizeableBootCamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct ResizeableBootCamp: View {
    @State var showSheet: Bool = false
    @State var selection: PresentationDetent = .medium
    var body: some View {
        Button("Show Sheet") {
            self.showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MySheetView(detents: $selection)
//                .presentationDetents([.fraction(0.3), .medium, .large])
                .presentationDetents([.medium, .large], selection: $selection)
//                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled(showSheet)
        }
    }
}

struct MySheetView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            VStack {
                
                Button("Medium") {
                    detents = .medium
                }
                Button("Large") {
                    detents = .large
                }
            }
        }
    }
}

#Preview {
    ResizeableBootCamp()
}
