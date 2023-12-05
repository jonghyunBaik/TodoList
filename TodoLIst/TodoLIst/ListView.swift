//
//  ListView.swift
//  TodoLIst
//
//  Created by jonghyun baik on 11/10/23.
//

import SwiftUI



struct ListView: View {
    @State var todoStore : [TodoModel]
    private let loadJson : LoadJson = LoadJson()
    init() {
        todoStore = loadJson.loadJson("sample.json")
        
    }
    
    var body: some View {
        NavigationStack {
            VStack{
                HStack {
                    Spacer()
                    NavigationLink {
                       AddView(todostore: $todoStore)
                    } label: {
                        Text("+").font(.title)
                    }
                    .padding(.trailing, 20)


                }
                Text("ToDo 100")
                    .font(.title)
                List {
                    ForEach ($todoStore) { todo in
                        NavigationLink(destination : TodoDetail(todoModel: todo)){
                            TodoItem(todoModel: todo)
                            
                        }
                    }
                    .onDelete(perform: removeRows)
                }
                .listStyle(.inset)
            }
        }
    }
    func removeRows(at offsets: IndexSet) {
        todoStore.remove(atOffsets: offsets)
    }
}




#Preview {
    ListView()
}
