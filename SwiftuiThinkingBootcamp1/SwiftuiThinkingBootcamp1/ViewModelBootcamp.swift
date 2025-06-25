//
//  ViewModelBootcamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    var name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray:[FruitModel] = [ ]
    @Published var isLoading: Bool = false
    
    init() {
        addFruit()
    }
    func addFruit() {
        let fruit1 = FruitModel(name: "Pineapple", count: 20)
        let fruit2 = FruitModel(name: "Mango", count: 12)
        let fruit3 = FruitModel(name: "Orange", count: 15)
        let fruit4 = FruitModel(name: "Apples", count: 5)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(FruitModel(name: "Bananas", count: 10))
            self.fruitArray.append(fruit4)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(at offsets: IndexSet) {
        fruitArray.remove(atOffsets: offsets)
    }
    
}

struct ViewModelBootcamp: View {
    //    @State var fruitArray:[FruitModel] = []
    // @StateObject -> Use This on creation / Init
    // @ObservedObject -> Use This for Subview
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationStack {
            //            if fruitViewModel.isLoading {
            //                ProgressView()
            //            }
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                }
                ForEach(fruitViewModel.fruitArray) { fruit in
                    HStack{
                        
                        Text("\(fruit.count)")
                            .foregroundStyle(Color.red)
                        Text("\(fruit.name)")
                            .font(.headline)
                            .bold()
                    }
                    
                }
                .onDelete(perform: fruitViewModel.deleteFruit)
            }
            .navigationBarItems(trailing:
                                    NavigationLink(destination: FruitViewScreen( fruitViewModel: fruitViewModel)) {
                Text("Show")
            }
            )
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Fruit List")
            
        }
    }
    
}

struct FruitViewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
//            Button("Back Button") {
//                presentationMode.wrappedValue.dismiss()
//            }
            List {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
