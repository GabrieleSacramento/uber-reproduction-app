
//
//  ContentView.swift
//  uber-reproduction-app
//
//  Created by Gabriele sacramento carvalho de jesus on 22/10/25.
//

import SwiftUI

struct HomeView: View {
	
	var body: some View {
		UberMapViewRepresentable().ignoresSafeArea()
	}
}

#Preview {
	HomeView()
}
