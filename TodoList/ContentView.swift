//
//  ContentView.swift
//  TodoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewTask = false
    
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
                    showNewTask = true
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            } // end of Hstack
            Spacer() // push up
            
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
