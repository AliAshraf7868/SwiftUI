//
//  ModelBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct UserModel: Identifiable {
    let id = UUID()
    let displayName: String
    let username: String
    let followersCount: Int
    let isVerified: Bool
}
struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick ", username: "nick123", followersCount: 100, isVerified: true),
        UserModel(displayName: "John", username: "johnDoe", followersCount: 500, isVerified: true),
        UserModel(displayName: "Alex", username: "alex123", followersCount: 2000, isVerified: true),
        UserModel(displayName: "Emma", username: "emmaWatson", followersCount: 3000, isVerified: false),
        UserModel(displayName: "David", username: "david123", followersCount: 4000, isVerified: true),
    ]
    var body: some View {
        NavigationStack {
            
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 30, height: 30)
                        VStack {
                            Text("\(user.displayName)")
                                .font(.headline)
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        if user.isVerified {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.blue)
                        }
                        Spacer()
                        VStack {
                            Text("\(user.followersCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .fontWeight(.light)
                        }
                    }
                    
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Users")
            
        }
    }
}

#Preview {
    ModelBootcamp()
}
