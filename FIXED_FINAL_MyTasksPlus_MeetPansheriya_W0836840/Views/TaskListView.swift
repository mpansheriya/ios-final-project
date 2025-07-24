//
//  TaskListView.swift
//  MyTasks+
//
//  Created by Meet Pansheriya W0836840
//

import SwiftUI

struct TaskListView: View {
    @State private var tasks: [Task] = StorageManager.loadTasks()

    var body: some View {
        NavigationView {
            List {
                ForEach(tasks) { task in
                    HStack {
                        Text(task.title)
                        Spacer()
                        if task.isCompleted {
                            Image(systemName: "checkmark.circle.fill")
                        }
                    }
                }
                .onDelete(perform: deleteTask)
            }
            .navigationTitle("My Tasks")
        }
    }

    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
        StorageManager.saveTasks(tasks)
    }
}

                    .onTapGesture {
                        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
                            tasks[index].isCompleted.toggle()
                            StorageManager.saveTasks(tasks)
                        }
                    }
