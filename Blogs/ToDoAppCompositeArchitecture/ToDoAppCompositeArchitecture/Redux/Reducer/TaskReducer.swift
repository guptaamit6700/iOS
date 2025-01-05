//
//  TaskReducer.swift
//  ToDoAppCompositeArchitecture
//
//  Created by Amit  Gupta on 5/1/2025.
//

import Foundation

func taskReducer(state: AppState, action: TaskAction) -> AppState {
    var state = state
    switch action {
    case .addTask(let title):
        let newTask = Task(id: UUID(), title: title, isCompleted: false)
        state.tasks.append(newTask)
    case .toggleCompletion(let id):
        if let index = state.tasks.firstIndex(where: { $0.id == id }) {
            state.tasks[index].isCompleted.toggle()
        }
    case .deleteTask(let id):
        state.tasks.removeAll { $0.id == id }
    }
    return state
}
