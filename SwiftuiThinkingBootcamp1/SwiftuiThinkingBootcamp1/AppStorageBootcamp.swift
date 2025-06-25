//
//  AppStorageBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("currentUserName") var currentUserName: String?
    var body: some View {
        VStack {
            
            if let name = currentUserName {
                Text("Hello \(name)")
            } else {
                Text("Please save your name")
            }
            
            Button("Save") {
                currentUserName = "Changed Name"
//                UserDefaults.standard.set("John", forKey: "currentUserName")
            }
//            .onAppear {
//                currentUserName = UserDefaults.standard.string(forKey: "currentUserName")
//            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
