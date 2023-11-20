//
//  AddView.swift
//  TodoLIst
//
//  Created by jonghyun baik on 11/18/23.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var todostore : [TodoModel]
    @State private var title = ""
    @State private var description = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField(text: $title) {
                Text("title")
            }
            TextField(text: $description) {
                Text("description")
            }
            
            Button {
                let tempModel : TodoModel = TodoModel(id: todostore.count + 1, title: title, description: description, completed: false)
                todostore.append(tempModel)
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Add List")
            }

        }
        .padding(20)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    AddView(todostore: .constant([]))
}
