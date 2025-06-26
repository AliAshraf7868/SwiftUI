//
//  FocusStateBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 25/06/2025.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField {
        case emptyUsername
        case emptyPassword
    }
    @FocusState var focusField: OnboardingField?
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            TextField("Add your name", text: $username)
                .focused($focusField, equals: .emptyUsername)
                .padding()
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            TextField("Password", text: $password)
                .focused($focusField, equals: .emptyPassword)
                .padding()
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                
            Button("Sign up") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("Sign up")
                } else if usernameIsValid {
                    focusField = .emptyPassword
                } else {
                    focusField = .emptyUsername
                }
                
            }
        }
//        .onAppear() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                self.isFocused = true
//            }
//        }
        .padding()
    }
}

#Preview {
    FocusStateBootcamp()
}
