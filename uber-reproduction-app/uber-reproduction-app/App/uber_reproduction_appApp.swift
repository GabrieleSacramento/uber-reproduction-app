//
//  uber_reproduction_appApp.swift
//  uber-reproduction-app
//
//  Created by Gabriele sacramento carvalho de jesus on 22/10/25.
//

import SwiftUI
import GoogleMaps

@main
struct uber_reproduction_appApp: App {
	@StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
			HomeView()
				.environmentObject(locationViewModel)
        }
    }
}
