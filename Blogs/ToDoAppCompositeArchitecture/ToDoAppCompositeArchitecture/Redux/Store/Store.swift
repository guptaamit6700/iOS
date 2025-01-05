//
//  Store.swift
//  ToDoAppCompositeArchitecture
//
//  Created by Amit  Gupta on 5/1/2025.
//

import Foundation

class Store: ObservableObject {
    @Published private(set) var state: AppState
    private let reducer: (AppState, TaskAction) -> AppState
    init(state: AppState, reducer: @escaping (AppState, TaskAction) -> AppState) {
        self.state = state
        self.reducer = reducer
    }
    
    func dispatch(action: TaskAction) {
        state = reducer(state, action)
    }
}
