//
//  ActivityDetailsView.swift
//  HabbitTracker
//
//  Created by MaćKo on 22/04/2024.
//

import SwiftUI

struct ActivityDetailsView: View {
    let tracker : Tracker
    let activity: Activity

    var body: some View {
        VStack {
            Text(activity.title)

            Text(activity.description)

            Text("\(activity.completionCount)")
        }

        Button("Increase completion count", action: increaseCount)
    }

    func increaseCount() {
        if let index = tracker.activities.firstIndex(of: activity) {
            tracker.activities[index].completionCount += 1
        }
    }
}

#Preview {
    let activityA = Activity(title: "Meditation", description: "Meditate for 10 minutes", completionCount: 0)

    return ActivityDetailsView(tracker: Tracker(activities: [
        activityA,
        Activity(title: "Drink water", description: "Drink a glass of the water", completionCount: 0)
    ]), activity: activityA)
}
