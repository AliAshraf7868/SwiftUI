//
//  NavigationViewBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Second Screen",destination: MySecondScreen())
                Text("Hello, World!")
                    .padding()
                Text("Hello, World!")
                    .padding()
                Text("Hello, World!")
                    .padding()
                Text("Hello, World!")
                    .padding()
            }
            .navigationTitle("All Products")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                Image(systemName: "person.fill")
                NavigationLink(destination: OtherScreen(),
                               label: {
                    Image(systemName: "gear")
                }
                )
                    
            },
                trailing: Image(systemName: "ellipsis")
            )
        }
    }
}

struct MySecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
                .navigationTitle(Text("Second Screen"))
//                .navigationBarBackButtonHidden(true)

            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                    .padding(.all)
                NavigationLink("Third Screen",destination: Text("Back to First Screen"))
            }
//            Spacer()
           

        }
    }
}

struct OtherScreen: View {
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
                .navigationTitle(Text("Other Screen"))

           

        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
