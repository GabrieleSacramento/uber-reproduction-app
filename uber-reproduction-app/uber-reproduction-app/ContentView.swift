
//
//  ContentView.swift
//  uber-reproduction-app
//
//  Created by Gabriele sacramento carvalho de jesus on 22/10/25.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
	var view = MapView()
	var body: some View {
		VStack {
			Text("Uber App").font(.title)
			view
		}
		.padding()
	}
}

#Preview {
	ContentView()
}
