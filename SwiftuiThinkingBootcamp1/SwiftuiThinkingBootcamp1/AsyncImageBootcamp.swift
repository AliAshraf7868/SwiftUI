//
//  AsyncImageBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .failure(let error):
                Image(systemName: "questionmark.circle")
            case .success(let image):
                image
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                    .cornerRadius(20)
            default:
                Image(systemName: "questionmark.circle")
            }
        }
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .frame(width: 200, height: 200)
//                .scaledToFit()
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
    
            
    }
}

#Preview {
    AsyncImageBootcamp()
}
