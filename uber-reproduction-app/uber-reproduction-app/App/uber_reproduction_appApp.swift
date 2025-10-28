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
	init() {
		GMSServices.provideAPIKey("AIzaSyCMdn3JsAu_4b_ejtJALZQZMMPkt3cU2nQ")
	}
    var body: some Scene {
        WindowGroup {
			HomeView()
        }
    }
}
