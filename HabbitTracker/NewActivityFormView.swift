//
//  NewActivityFormView.swift
//  HabbitTracker
//
//  Created by MaćKo on 22/04/2024.
//

import SwiftUI

struct NewActivityFormView: View {
    @Environment(\.dismiss) var dismiss

    @State private var title = ""
    @State private var description = ""

    let tracker: Tracker

    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                }
            }
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        let activity = Activity(title: title, description: description)
                        tracker.activities.append(activity)
                        dismiss()
                    }
                }

                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    let tracker = Tracker()
    tracker.activities.append(Activity(title: "AAA", description: "AAA"))
    tracker.activities.append(Activity(title: "BBB", description: "BBB"))

    return NewActivityFormView(tracker: tracker)
}
