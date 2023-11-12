//
//  TodoModel.swift
//  TodoLIst
//
//  Created by jonghyun baik on 11/10/23.
//

import Foundation

struct TodoModel : Hashable, Codable {
    var id : Int
    var title : String
    var description : String
    var completed : Bool
    
    init(id: Int, title: String, description: String, completed: Bool) {
        self.id = id
        self.title = title
        self.description = description
        self.completed = completed
    }
}

var todoData : [TodoModel] = loadJson("sample.json")

class TodoStore {
    var items : [TodoModel]
    
    init(items: [TodoModel]) {
        self.items = items
    }
}
