//
//  UberViewController.swift
//  uber-reproduction-app
//
//  Created by Gabriele sacramento carvalho de jesus on 22/10/25.
//
import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
	typealias UIViewType = GMSMapView
	
	func makeUIView(context: Context) -> GMSMapView {
		
		let options = GMSMapViewOptions()
		options.camera = GMSCameraPosition.camera(withLatitude: 12.8586086, longitude: -38.30480458, zoom: 1)
		let mapView = GMSMapView(options:options)
		
		return mapView
	}
	
	func updateUIView(_ uiView: GMSMapView, context: Context) {
		
	}
}
