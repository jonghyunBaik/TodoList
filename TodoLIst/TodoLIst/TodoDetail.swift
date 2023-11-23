//
//  TodoDetail.swift
//  TodoLIst
//
//  Created by jonghyun baik on 11/11/23.
//

import SwiftUI

struct TodoDetail: View {
    @Binding var todoModel : TodoModel
    @State var progress : Double = 0
    var body: some View {
        VStack (alignment: .leading) {
            Image(systemName: todoModel.completed ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundStyle(todoModel.completed ? .green : .gray)
                .font(.title)
                .padding(.vertical, 30)
                .padding(.horizontal, 10)
            HStack {
                Text(todoModel.title)
                    .font(.largeTitle)
                Spacer()
            }
            Text(todoModel.description)
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(width: .infinity)
    }
}

#Preview {
    TodoDetail(todoModel: .constant(TodoModel(id: 1, title: "Eat Ttokbok2", description: "오늘은 입니다.", completed: true)))
}
