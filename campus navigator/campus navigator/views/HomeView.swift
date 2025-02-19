//
//  HomeView.swift
//  campus navigator
//
//  Created by Gamika Punsisi on 2025-02-19.
//

import SwiftUI

struct HomeView: View {
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

                VStack(spacing: 30) {
                    // Campus Illustration (Replace with an actual image)
                    Image(systemName: "building.columns.fill") // University icon
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.white)
                        .shadow(radius: 10)

                    // Title
                    Text("Campus Navigator")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)

                    // Description
                    Text("Find your way around campus easily with our interactive map!")
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.9))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)

                    // Navigation Button
                        NavigationLink(destination: DashboardView()) {
                        Text("Explore Campus")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: 200)
                            .background(Color.white)
                            .foregroundColor(.blue)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                    }
                }
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
