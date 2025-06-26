//
//  EnvironmentBootCamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

//struct check: ObservableObject {
//    @Published var text: String = ""
//}
class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        
        dataArray.append(contentsOf: ["iPhone", "iPad", "Mac","Apple Watch"])
    }
    
    func deleteItem(at index: Int) {
        dataArray.remove(at: index)
    }
}

struct EnvironmentBootCamp: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
    
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination:
                                    DetailView(selectedItem: item, viewModel: viewModel)
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
    @ObservedObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            NavigationLink {
                DetailAppleView(selectedItem: "Apple")
            } label: {
                Text(viewModel.dataArray.first ?? "Apple")
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
                        Button {
                            VM.deleteItem(at: index)
                            
                        } label: {
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
}

#Preview {
    EnvironmentBootCamp()
//    DetailView(selectedItem: "iPhone")
//    DetailAppleView(selectedItem: "Apple")
}
