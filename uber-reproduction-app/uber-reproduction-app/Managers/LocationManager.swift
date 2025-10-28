//
//  LocationManager.swift
//  uber-reproduction-app
//
//  Created by Gabriele sacramento carvalho de jesus on 27/10/25.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject {
	private let locationManager = CLLocationManager()
	
	override init() {
		super.init()
		locationManager.desiredAccuracy = kCLLocationAccuracyBest
		locationManager.requestWhenInUseAuthorization()
		locationManager.startUpdatingLocation()
		locationManager.delegate = self
	}
}

extension LocationManager: CLLocationManagerDelegate {
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:
	[CLLocation]) {
		guard !locations.isEmpty else {return}
		locationManager.stopUpdatingLocation()
	}
}
