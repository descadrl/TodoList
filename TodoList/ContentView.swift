//
//  ContentView.swift
//  TodoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewTask = false
    @Query var toDo: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                Spacer() // push left or right
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                    
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            } // end of Hstack
            .padding()
            Spacer() // push up
            
            List{ // displays list of task
                ForEach (toDo) { toDoItem in if toDoItem.isImportant {
                    Text("‼" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                    }
                }
            }
            
            
            if showNewTask {
                NewToDo(toDoItem: ToDoItem(title: "", isImportant: false))
            }
            
        } // end of Vstack
        if showNewTask {
              NewToDo(toDoItem: ToDoItem(title: "", isImportant: false))
            }
    }
}

#Preview {
    ContentView()
}
