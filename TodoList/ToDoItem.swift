//
//  ToDoItem.swift
//  TodoList
//
//  Created by Scholar on 8/8/25.
//

import Foundation
import SwiftData // Let's us to so CRUD operations

@Model // macro
class ToDoItem { // templete
    
    var title: String // what the task is
    var isImportant: Bool // is the task important
    
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
    
}
