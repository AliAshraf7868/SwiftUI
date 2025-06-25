//
//  BacgroundMaterialBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct BacgroundMaterialBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 6)
                    .frame(width: 60, height: 4)
                    .padding()
                Spacer()
                    
            }
            .frame(height: 400)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
            
        }
        .ignoresSafeArea(edges: .all)
        .background(
            Image("projectImg")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
        
    }
}

#Preview {
    BacgroundMaterialBootcamp()
}
