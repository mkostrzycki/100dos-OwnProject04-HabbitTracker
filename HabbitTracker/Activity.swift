//
//  Activity.swift
//  HabbitTracker
//
//  Created by MaćKo on 22/04/2024.
//

import Foundation

struct Activity: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var description: String
    var completionCount = 0
}
