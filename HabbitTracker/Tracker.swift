//
//  Tracker.swift
//  HabbitTracker
//
//  Created by MaćKo on 22/04/2024.
//

import Foundation

@Observable
class Tracker {
    var activities = [Activity]()

    init(activities: [Activity] = [Activity]()) {
        self.activities = activities
    }

    func add(_ activity: Activity) {
        self.activities.append(activity)
    }

    func removeBy(index: Int) {
        self.activities.remove(at: index)
    }
}
