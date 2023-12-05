//
//  TodoDetail.swift
//  TodoLIst
//
//  Created by jonghyun baik on 11/11/23.
//

import SwiftUI

struct TodoDetail: View {
    
    @Environment(\.dismiss) private var dismiss
    @Binding var todoModel : TodoModel
    
    var body: some View {
        VStack (alignment: .leading) {
            Image(systemName: todoModel.completed ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundStyle(todoModel.completed ? .green : .gray)
                .font(.title)
                .padding(.vertical, 30)
                .padding(.horizontal, 10)
            HStack {
                Text("Title")
                    .font(.largeTitle)
                TextField(text: $todoModel.title) {
                    Text(todoModel.title)
                }
                .font(.title2)
                .textFieldStyle(.roundedBorder)
                
                Spacer()
            }
            
            HStack {
                Text("Description")
                    .font(.title2)
                Spacer()
            }
            .padding(.top, 20)
            
            TextField(text: $todoModel.description) {
                Text(todoModel.description)
            }
            .font(.title3)
            .textFieldStyle(.roundedBorder)
            
            HStack {
                Spacer()
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Save")
                        .font(.title)
                })
                Spacer()
            }
            .padding(.top, 30)
            
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    TodoDetail(todoModel: .constant(TodoModel(id: 1, title: "123", description: "123", completed: true)))
}
