//
//  Goal.swift
//  MyTasks+
//
//  Created by Meet Pansheriya W0836840
//

import Foundation

struct Goal: Identifiable, Codable {
    var id = UUID()
    var title: String
    var weeklyTarget: Int
    var completed: Int = 0
}
