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
            Spacer() // push up
            
            List{ // displays list of task
                ForEach (toDo) { toDoItem in Text(toDoItem.title)
                    
                }
            }
            
            
            if showNewTask {
                NewToDo()
            }
            
        } // end of Vstack
        .padding()
    }
}

#Preview {
    ContentView()
}
