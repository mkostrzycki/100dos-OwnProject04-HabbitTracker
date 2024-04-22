//
//  ActivityListView.swift
//  HabbitTracker
//
//  Created by MaćKo on 22/04/2024.
//

import SwiftUI

struct ActivityListView: View {
    let tracker: Tracker

    var body: some View {
        List {
            ForEach(tracker.activities) { activity in
                NavigationLink {
                    ActivityDetailsView(tracker: tracker, activity: activity)
                } label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(activity.title)
                                .font(.headline)
                                .foregroundStyle(.primary)

                            Text(activity.description)
                                .font(.caption)
                                .foregroundStyle(.primary.opacity(0.7))
                        }

                        Spacer()

                        Text("\(activity.completionCount)")

                    }
                }
            }
        }
    }
}

#Preview {
    ActivityListView(tracker:
        Tracker(activities: [
            Activity(title: "Meditation", description: "Meditate for 10 minutes"),
            Activity(title: "Drink water", description: "Drink a glass of the water")
        ])
    )
}
