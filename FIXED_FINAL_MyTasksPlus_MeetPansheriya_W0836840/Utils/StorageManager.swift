//
//  StorageManager.swift
//  MyTasks+
//
//  Created by Meet Pansheriya W0836840
//

import Foundation

class StorageManager {
    static let taskKey = "tasks.json"

    static func saveTasks(_ tasks: [Task]) {
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(tasks) {
            let url = getDocumentsDirectory().appendingPathComponent(taskKey)
            try? data.write(to: url)
        }
    }

    static func loadTasks() -> [Task] {
        let url = getDocumentsDirectory().appendingPathComponent(taskKey)
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let tasks = try? decoder.decode([Task].self, from: data) {
                return tasks
            }
        }
        return []
    }

    private static func getDocumentsDirectory() -> URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}

    static func saveGoals(_ goals: [Goal]) {
        let url = getDocumentsDirectory().appendingPathComponent("goals.json")
        if let data = try? JSONEncoder().encode(goals) {
            try? data.write(to: url)
        }
    }

    static func loadGoals() -> [Goal] {
        let url = getDocumentsDirectory().appendingPathComponent("goals.json")
        if let data = try? Data(contentsOf: url),
           let goals = try? JSONDecoder().decode([Goal].self, from: data) {
            return goals
        }
        return []
    }
