//
//  ListView.swift
//  TodoLIst
//
//  Created by jonghyun baik on 11/10/23.
//

import SwiftUI



struct ListView: View {
    @State var todoStore = TodoStore(items: todoData)
    var body: some View {
        NavigationStack {
            VStack{
                Text("ToDo 100")
                    .font(.title)
                List {
                    ForEach (0..<todoStore.items.count, id: \.self) { i in
                        NavigationLink(destination : TodoDetail(todoModel: $todoStore.items[i])){
                            TodoItem(todoModel: $todoStore.items[i])
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ListView()
}
