//
//  campus_navigatorApp.swift
//  campus navigator
//
//  Created by Gamika Punsisi on 2025-02-18.
//

//import SwiftUI
//
//@main
//struct campus_navigatorApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

import SwiftUI

@main
struct CampusNavigatorApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
        }
    }
}
