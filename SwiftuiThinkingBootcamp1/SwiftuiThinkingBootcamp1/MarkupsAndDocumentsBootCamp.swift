//
//  MarkupsAndDocumentsBootCamp.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 24/06/2025.
//

import SwiftUI

struct MarkupsAndDocumentsBootCamp: View {
    
    // MARK: Properties
    @State var data:[String] = ["Apples", "Bananas", "Oranges"]
    @State var showAlert: Bool = false
    
    // MARK: Body
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(data, id: \.self) { item in
                    Text(item)
                        .font(.headline)
                }
            }
            
            .navigationTitle(Text("Documentation"))
            .navigationBarItems(trailing:
                                    Button("Alert") {
                    self.showAlert.toggle()
            }
            )
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the Alert.")
            }
        }
    }
    
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}
// MARK: Preview
#Preview {
    MarkupsAndDocumentsBootCamp()
}
