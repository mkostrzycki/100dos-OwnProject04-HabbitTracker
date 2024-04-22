//
//  Tracker.swift
//  HabbitTracker
//
//  Created by MaćKo on 22/04/2024.
//

import Foundation

@Observable
class Tracker {
    var activities = [Activity]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(activities) {
                UserDefaults.standard.set(encoded, forKey: "Activities")
            }
        }
    }

    init() {
        if let savedActivities = UserDefaults.standard.data(forKey: "Activities") {
            if let decodedActivities = try? JSONDecoder().decode([Activity].self, from: savedActivities) {
                self.activities = decodedActivities

                return
            }
        }

        self.activities = [Activity]()
    }
}
