//
//  DashboardView.swift
//  campus navigator
//
//  Created by Gamika Punsisi on 2025-02-19.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Gradient Background
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue, Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) {
                    // Title
                    Text("Campus Dashboard")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)

                    // Features Grid
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        DashboardCard(icon: "map.fill", title: "Campus Map", destination: MapView())
                        DashboardCard(icon: "calendar", title: "Events", destination: EventsView())
                        DashboardCard(icon: "location.viewfinder", title: "Tour Guide", destination: TourGuideView())
                        DashboardCard(icon: "clock", title: "Lecture Schedule", destination: ScheduleView())
                    }
                    .padding()
                }
            }
        }
    }
}

// Reusable Dashboard Card
struct DashboardCard<Destination: View>: View {
    let icon: String
    let title: String
    let destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            VStack {
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)

                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .frame(width: 150, height: 150)
            .background(Color.white.opacity(0.2))
            .cornerRadius(20)
            .shadow(radius: 5)
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
