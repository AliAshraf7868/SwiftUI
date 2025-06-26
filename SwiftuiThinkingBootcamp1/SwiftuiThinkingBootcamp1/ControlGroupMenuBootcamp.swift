//
//  ControlGroupMenuBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("Menu"){
            ControlGroup {
                Button("First"){}
                
                Button("Second"){}
                Button("Third"){}
            }
//            Menu("Select Any") {
//                ControlGroup {
//                    Button("First"){}
//                    
//                    Button("Second"){}
//                    Button("Third"){}
//                }
//                
//                ControlGroup {
//                    Button("First"){}
//                    
//                    Button("Second"){}
//                    Button("Third"){}
//                }
//                ControlGroup {
//                    Button("First"){}
//                    
//                    Button("Second"){}
//
//                }
//            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
