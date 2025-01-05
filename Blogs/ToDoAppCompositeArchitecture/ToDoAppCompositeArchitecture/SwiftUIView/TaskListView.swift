import SwiftUI

struct TaskListView: View {
    @ObservedObject var store: Store

    var body: some View {
        List {
            ForEach(store.state.tasks) { task in
                HStack {
                    Text(task.title)
                        .strikethrough(task.isCompleted, color: .black)
                        .foregroundColor(task.isCompleted ? .gray : .black)
                    Spacer()
                    Button(action: {
                        store.dispatch(action: .toggleCompletion(id: task.id))
                    }) {
                        Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                    }
                }
            }
            .onDelete { indexSet in
                indexSet.forEach { index in
                    let task = store.state.tasks[index]
                    store.dispatch(action: .deleteTask(id: task.id))
                }
            }
        }
    }
}
