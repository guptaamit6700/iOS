//
//  TaskAction.swift
//  ToDoAppCompositeArchitecture
//
//  Created by Amit  Gupta on 5/1/2025.
//

import Foundation

enum TaskAction {
    case addTask(title: String)
    case toggleCompletion(id: UUID)
    case deleteTask(id: UUID)
}

