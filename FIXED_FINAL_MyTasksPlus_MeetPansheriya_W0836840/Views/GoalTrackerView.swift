
import SwiftUI

struct GoalTrackerView: View {
    @State private var goals: [Goal] = StorageManager.loadGoals()

    var body: some View {
        NavigationView {
            List {
                ForEach(goals.indices, id: \.self) { index in
                    VStack(alignment: .leading) {
                        Text(goals[index].title)
                            .font(.headline)
                        Text("Completed: \(goals[index].completed) / \(goals[index].weeklyTarget)")
                        ProgressView(value: Float(goals[index].completed), total: Float(goals[index].weeklyTarget))
                    }
                    .padding()
                }
            }
            .navigationTitle("Weekly Goals")
        }
    }
}
