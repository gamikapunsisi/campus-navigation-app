//
//  ScheduleView.swift
//  campus navigator
//
//  Created by Gamika Punsisi on 2025-02-19.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        VStack {
            Text("Lecture Schedule Coming Soon!")
                .font(.title)
                .foregroundColor(.blue)
        }
        .navigationTitle("Lecture Schedule")
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
