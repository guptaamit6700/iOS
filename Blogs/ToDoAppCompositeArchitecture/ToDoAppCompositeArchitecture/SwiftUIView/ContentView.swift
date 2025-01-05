//
//  ContentView.swift
//  ToDoAppCompositeArchitecture
//
//  Created by Amit  Gupta on 5/1/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var store = Store(state: AppState(), reducer: taskReducer)

    var body: some View {
        VStack {
            AddTaskView(store: store)
            TaskListView(store: store)
        }
    }
}

