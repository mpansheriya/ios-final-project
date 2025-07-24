//
//  Task.swift
//  MyTasks+
//
//  Created by Meet Pansheriya W0836840
//

import Foundation

struct Task: Identifiable, Codable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
}
