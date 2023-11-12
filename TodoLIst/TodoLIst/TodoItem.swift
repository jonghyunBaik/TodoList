//
//  TodoItem.swift
//  TodoLIst
//
//  Created by jonghyun baik on 11/10/23.
//

import SwiftUI


struct TodoItem: View {
    @Binding var todoModel : TodoModel
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(todoModel.id). \(todoModel.title)")
                Spacer()
                
                Image(systemName: todoModel.completed ? "checkmark.circle.fill" : "checkmark.circle")
                    .foregroundStyle(todoModel.completed ? .green : .gray)
                    
            }.font(.title3)
            Text("\(todoModel.description)")
                .font(.footnote)
                .lineLimit(1)
        }.padding()
    }
}

#Preview {
    TodoItem(todoModel: .constant(TodoModel(id: 1, title: "12", description: "12", completed: true)))
}
