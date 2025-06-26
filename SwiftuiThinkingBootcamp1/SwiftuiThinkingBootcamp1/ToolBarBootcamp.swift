//
//  ToolBarBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct ToolBarBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Color.indigo
                    Text("ToolBarBootcamp")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                }
                .navigationTitle(
                    Text("ToolBarBootcamp")
                    
                )
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Image(systemName: "plus")
                            Text("Add")
                        }
                        
                    }
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "gear")
                    }
                    
//                    ToolbarItem(placement: .principal) { //bottomBar, .principal
//                        Image(systemName: "house")
//                    }
                }
            }
            
        }
        .foregroundStyle(Color.white)
    }
}

#Preview {
    ToolBarBootcamp()
}
