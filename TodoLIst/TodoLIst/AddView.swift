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
                HStack {
                    Spacer()
                    Text("Bucket List")
                        .font(.largeTitle)
                        .padding(.vertical, 30)
                    Spacer()
                }
                
                Text("Input Title of ToDo")
                
                TextField(text: $title) {
                }
                .padding(.bottom, 20)
                .textFieldStyle(.roundedBorder)
                
                Text("Input Description of ToDo")
                TextField(text: $description) {
                }
                .padding(.bottom, 20)
                .textFieldStyle(.roundedBorder)
                
                Button {
                    let tempModel : TodoModel = TodoModel(id: todostore.count + 1, title: title, description: description, completed: false)
                    todostore.append(tempModel)
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Add List")
                }
                .buttonStyle(.borderedProminent)
                Spacer()
        }
        .padding(20)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    AddView(todostore: .constant([]))
}
