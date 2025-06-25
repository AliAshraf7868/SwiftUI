//
//  TapGestureBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(isSelected ? Color.green : Color.red)
                .frame(height: 200)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Tap me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding()
                    
            }
            
            Text("Tap me")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(20)
                .padding()
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            Spacer()
        }
        .padding(.all, 50)
            
            
    }
}

#Preview {
    TapGestureBootcamp()
}
