//
//  EnvironmentBootCamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI


class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "Mac","Apple Watch"])
    }
}

struct EnvironmentBootCamp: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
    
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination:
                                    DetailView(selectedItem: item)
                    ) {
//
                        Text(item)
                    }
                    
                }
            }
            .navigationBarTitle("EnvironmentBootCamp")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selectedItem: String
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            NavigationLink {
                DetailAppleView(selectedItem: "Apple")
            } label: {
                Text(selectedItem)
                    .font(.largeTitle)
                    .foregroundStyle(.orange)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
            }

            
        }
    }
}

struct DetailAppleView: View {
    let selectedItem: String
    @EnvironmentObject var VM: EnvironmentViewModel
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    ForEach(0..<VM.dataArray.count, id: \.self) { index in
                        Text(VM.dataArray[index])
                            .font(.largeTitle)
                            .foregroundStyle(.orange)
                            .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    EnvironmentBootCamp()
//    DetailView(selectedItem: "iPhone")
//    DetailAppleView(selectedItem: "Apple")
}
