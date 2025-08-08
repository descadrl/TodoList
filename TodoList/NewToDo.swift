//
//  NewToDo.swift
//  TodoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDo: View {
    
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        
        
        VStack {
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description", text: $toDoItem.title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }
            
            Button {
                addToDo()
            } label: {
                Text("Save")
            }
            
            
        }// end of Vstack
        .padding()
        
    }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant:toDoItem.isImportant)
        modelContext.insert(toDo)
        }
    }
        


#Preview {
    NewToDo(toDoItem: ToDoItem(title: "", isImportant: false))
}
