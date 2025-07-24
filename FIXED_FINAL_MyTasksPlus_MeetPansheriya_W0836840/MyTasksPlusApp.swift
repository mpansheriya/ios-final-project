//
//  MyTasksPlusApp.swift
//  MyTasks+
//
//  Created by Meet Pansheriya W0836840
//

import SwiftUI

@main
struct MyTasksPlusApp: App {
    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            TabView {
                TaskListView()
                    .tabItem {
                        Label("Tasks", systemImage: "checkmark.circle")
                    }
                AddTaskView()
                    .tabItem {
                        Label("Add Task", systemImage: "plus.circle")
                    }
                StatsView()
                    .tabItem {
                        Label("Stats", systemImage: "chart.bar")
                    }
            }
        }
        .onChange(of: scenePhase) { newPhase in
            switch newPhase {
            case .active:
                print("App is active")
            case .inactive:
                print("App is inactive")
            case .background:
                print("App is in background")
            @unknown default:
                print("Unknown state")
            }
        }
    }
}