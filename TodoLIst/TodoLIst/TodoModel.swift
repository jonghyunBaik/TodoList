//
//  TodoModel.swift
//  TodoLIst
//
//  Created by jonghyun baik on 11/10/23.
//

import Foundation

struct TodoModel : Decodable, Identifiable {
    var id : Int
    var title : String
    var description : String
    var completed : Bool
    
}

class TodoStore {
    var items : [TodoModel]
    
    init(items: [TodoModel]) {
        self.items = items
    }
}
