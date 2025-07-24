//
//  StatsView.swift
//  MyTasks+
//
//  Created by Meet Pansheriya W0836840
//

import SwiftUI

struct StatsView: View {
    let completed = 7
    let total = 10

    var body: some View {
        VStack {
            Text("Weekly Goal Progress")
                .font(.headline)
            Text("Completed: \(completed) / \(total)")
                .padding()

            ProgressView(value: Float(completed), total: Float(total))
                .padding()
        }
    }
}