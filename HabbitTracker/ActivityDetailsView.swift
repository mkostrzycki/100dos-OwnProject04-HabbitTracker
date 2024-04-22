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
    let tracker = Tracker()
    let activity = Activity(title: "AAA", description: "AAA")
    tracker.activities.append(activity)
    tracker.activities.append(Activity(title: "BBB", description: "BBB"))

    return ActivityDetailsView(tracker: tracker, activity: activity)
}
