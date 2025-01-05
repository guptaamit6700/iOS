//
//  AddTaskView.swift
//  ToDoAppCompositeArchitecture
//
//  Created by Amit  Gupta on 5/1/2025.
//

import SwiftUI

struct AddTaskView: View {
    @State private var taskTitle: String = ""
    @ObservedObject var store: Store

    var body: some View {
        HStack {
            TextField("New Task", text: $taskTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Add") {
                if !taskTitle.isEmpty {
                    store.dispatch(action: .addTask(title: taskTitle))
                    taskTitle = ""
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
