//
//  AddTaskView.swift
//  MyTasks+
//
//  Created by Meet Pansheriya W0836840
//

import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""
    @State private var isCompleted: Bool = false
    @State private var tasks: [Task] = StorageManager.loadTasks()

    var body: some View {
        Form {
            TextField("Enter task", text: $title)
            Toggle("Completed", isOn: $isCompleted)

            Button("Save Task") {
                let newTask = Task(id: UUID(), title: title, isCompleted: isCompleted)
                tasks.append(newTask)
                StorageManager.saveTasks(tasks)
                title = ""
                isCompleted = false
            }
        }
        .navigationTitle("Add Task")
    }
}