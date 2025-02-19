//
//  ScheduleView.swift
//  campus navigator
//
//  Created by Gamika Punsisi on 2025-02-19.
//

import SwiftUI

struct ScheduleView: View {
    let scheduleData = [
        ("Data Structure", "Hall A", "09:00 AM - 10:30 AM"),
        ("Computer Science", "Hall B", "11:00 AM - 12:30 PM"),
        ("Agile", "Hall C", "01:00 PM - 02:30 PM"),
        ("Artificial Intelligence", "Hall D", "03:00 PM - 04:30 PM"),
        ("iOS Development", "Hall E", "10:30 AM - 12:00 PM"),
        ("Cyber Security", "Hall F", "02:30 PM - 04:00 PM")
    ]
    
    var body: some View {
        VStack {
            // Title with better styling
            Text("Lecture Schedule")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.top, 30)
            
            // Schedule Table with improved styling
            List {
                // Header Row with bold text
                HStack {
                    Text("Subject")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Lecture Hall")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Time")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.vertical, 10)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
                .padding(.bottom, 5)
                
                // Dynamic rows
                ForEach(scheduleData, id: \.0) { subject, hall, time in
                    HStack {
                        Text(subject)
                            .padding(.leading)
                        Spacer()
                        Text(hall)
                            .padding(.horizontal)
                        Spacer()
                        Text(time)
                            .padding(.trailing)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding(.vertical, 5)
                }
            }
            .listStyle(PlainListStyle())
            .cornerRadius(15)
        }
        .navigationTitle("Lecture Schedule")
        .padding(.horizontal)
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
