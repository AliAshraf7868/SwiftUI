//
//  DarkModeBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("This is primary color")
                        .foregroundStyle(.primary)
                    Text("This is secondary color")
                        .foregroundStyle(.secondary)
                    Text("This is tertiary color")
                        .foregroundStyle(.tertiary)
                    Text("This is Black color")
                        .foregroundStyle(.black)
                    Text("This is White color")
                        .foregroundStyle(.white)
                    Text("This is Red color")
                        .foregroundStyle(.red)
                    Text("This is testDarkMode color")
                        .foregroundStyle(Color("testDarkMode"))
                    Text("This color is locally adapted")
                        .foregroundColor(colorScheme == .light ? .blue : .yellow)
                }
            }
            .navigationTitle(Text("Dark Mode Bootcamp"))
        }
        
    }
}

#Preview {
    DarkModeBootcamp()
        
}
