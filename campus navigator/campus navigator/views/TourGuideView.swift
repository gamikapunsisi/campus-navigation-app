//
//  TourGuideView.swift
//  campus navigator
//
//  Created by Gamika Punsisi on 2025-02-19.
//

import SwiftUI

struct TourGuideView: View {
    // Sample tour locations
    let tourLocations = [
        ("University Library", "library.fill"),
        ("Main Campus Entrance", "building.columns.fill"),
        ("Student Center", "person.3.fill"),
        ("Sports Complex", "sportscourt.fill")
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Title with padding and styling
                Text("Campus Tour Guide")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.top, 30)
                
                // Short description
                Text("Take a virtual tour of our campus! Explore key locations and facilities.")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                
                // Tour Locations Section
                VStack(spacing: 15) {
                    ForEach(tourLocations, id: \.0) { location, icon in
                        TourLocationCard(location: location, icon: icon)
                    }
                }
                .padding(.horizontal)
                
                // Button to start tour (Placeholder action)
                NavigationLink(destination: Text("Tour Starting Soon!")) {
                    Text("Start the Virtual Tour")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                }
                .padding(.top, 30)
            }
        }
        .navigationTitle("Tour Guide")
        .padding()
    }
}

// Reusable Component for Tour Locations (Card Style)
struct TourLocationCard: View {
    let location: String
    let icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
                .padding()
            
            Text(location)
                .font(.title2)
                .foregroundColor(.blue)
                .padding(.vertical)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
        .padding(.bottom, 10)
    }
}

struct TourGuideView_Previews: PreviewProvider {
    static var previews: some View {
        TourGuideView()
    }
}
