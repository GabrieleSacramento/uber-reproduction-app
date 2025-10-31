//
//  LocationSearchViewModel.swift
//  uber-reproduction-app
//
//  Created by Gabriele sacramento carvalho de jesus on 30/10/25.
//

import Foundation
import MapKit

class LocationSearchViewModel: NSObject, ObservableObject {
	
	//MARK: Properties
	
	@Published var results = [MKLocalSearchCompletion] ()
	private let searchCompleter = MKLocalSearchCompleter()
	var queryFragment: String = "" {
		didSet {
			searchCompleter.queryFragment = queryFragment
		}
	}
	
	override init() {
		super.init()
		searchCompleter.delegate = self
		searchCompleter.queryFragment = queryFragment
	}
}

//MARK - MKLocalSearchCompleterDelegate

extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
	func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
		self.results = completer.results
	}
}
