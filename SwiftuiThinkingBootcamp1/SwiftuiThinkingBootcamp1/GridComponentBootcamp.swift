//
//  GridComponentBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct GridComponentBootcamp: View {
    var body: some View {
        Grid {
            ForEach(0..<4){ col in
                GridRow {
                    ForEach(0..<4){ row in
                        let cellNumber = (col*4)+row+1
                        if cellNumber == 6 {
//                            EmptyView()
                            Color.clear
                                .gridCellUnsizedAxes([.horizontal, .vertical] )
                        } else {
                            Cell(int: cellNumber)
                        }
                    }
                }
            }
        }
//        Grid {
//            GridRow() {
//                Cell(int: 1)
//                Cell(int: 2)
//            }
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            GridRow {
//                Cell(int: 3)
//                Cell(int: 4)
//                Cell(int: 5)
//                Cell(int: 6)
//            }
//            
//            
//        }
    }
    
    private func Cell(int: Int) -> some View {
        Text("\(int)")
            .font(.title)
            .padding()
            .background(Color.orange)
    }
}

#Preview {
    GridComponentBootcamp()
}
