//
//  IfLetGuardBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUser: String? = "ALi"
    @State var displayText: String? = nil
    @State var isLoading: Bool = true
    var body: some View {
        NavigationStack {
            VStack {
                Text("Do safe coding")
                if let displayText = displayText {
                    Text(displayText)
                }
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle(Text("Safe Code"))
            .onAppear() {
                loadUserData()
            }
        }
    }
    func fetchUser() {
        isLoading = true
        if let userId = currentUser {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.displayText = "Hello \(userId)"
                self.isLoading = false
            }
        } else {
            displayText = "No User Found"
        }
    }
    
    func loadUserData() {
        guard let userId = currentUser else {
            displayText = "No User Found"
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.displayText = "Hello \(userId)"
            self.isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
