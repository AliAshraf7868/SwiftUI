//
//  ActionSheets.swift
//  SwiftuiThinkingBootcamp1
//
//  Created by Softmatic IOS Dev on 23/06/2025.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    
    @State private var showActionSheet: Bool = false
    @State private var selectedOption: ActionSheetOption = .isOtherPost
    enum ActionSheetOption {
    case isMypost
    case isOtherPost
    }
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 44, height: 44)
                    .foregroundColor(.blue)
                Text("User Name")
                    .font(.headline)
                Spacer()
                Button( action: {
                    selectedOption = .isOtherPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
            }
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
                .cornerRadius(20)
        }
        .padding(.all)
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
    }
    
    func getActionSheet() -> ActionSheet {
//        ActionSheet(title: Text("This is the title"))
        let shareButton = ActionSheet.Button.default(Text("Share")) {
            
        }
        let ReportButton = ActionSheet.Button.destructive(Text("Report")) {
            
        }
        let DeleteButton = ActionSheet.Button.destructive(Text("Delete")) {
            
        }
        let cancelButton = ActionSheet.Button.cancel() {
            
        }
        switch selectedOption {
        case .isMypost:
            return ActionSheet(
            title: Text("Title"),
            message: Text(""),
            buttons: [shareButton, DeleteButton, cancelButton]
            )
        case .isOtherPost:
                return ActionSheet(
                    title: Text("Title"),
                    message: Text(""),
                    buttons: [shareButton, ReportButton, cancelButton]
        )
        }
        
    }
}

#Preview {
    ActionSheetBootCamp()
}
