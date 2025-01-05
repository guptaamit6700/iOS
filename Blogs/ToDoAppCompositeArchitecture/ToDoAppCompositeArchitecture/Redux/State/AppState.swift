//
//  AppState.swift
//  ToDoAppCompositeArchitecture
//
//  Created by Amit  Gupta on 5/1/2025.
//

import Foundation

// MARK: APPState
struct AppState {
    var tasks: [Task] = []
}

struct Task: Identifiable {
    let id: UUID
    var title: String
    var isCompleted: Bool
}
