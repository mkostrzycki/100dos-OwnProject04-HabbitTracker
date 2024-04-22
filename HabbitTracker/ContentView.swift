//
//  ContentView.swift
//  HabbitTracker
//
//  Created by MaćKo on 22/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tracker = Tracker(activities: [
        Activity(title: "Meditation", description: "Meditate for 10 minutes"),
        Activity(title: "Drink water", description: "Drink a glass of the water")
    ])

    @State private var showAddForm = false

    var body: some View {
        NavigationStack {
            VStack {
                ActivityListView(tracker: tracker)
            }
            .toolbar {
                Button("Add new activity", systemImage: "plus") {
                    showAddForm = true
                }
            }
        }
        .sheet(isPresented: $showAddForm) {
            NewActivityFormView(tracker: tracker)
        }
    }
}

#Preview {
    ContentView()
}
