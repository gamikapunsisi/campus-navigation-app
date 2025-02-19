//
//  MapView.swift
//  campus navigator
//
//  Created by Gamika Punsisi on 2025-02-19.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var position: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    )

    var body: some View {
        Map(position: $position) {
            Marker("Campus Location", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194))
        }
        .mapControls {
            MapUserLocationButton() // Show user's location button
            MapCompass() // Compass for navigation
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
