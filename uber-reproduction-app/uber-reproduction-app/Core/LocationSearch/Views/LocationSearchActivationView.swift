//
//  LocationSearchActivationView.swift
//  uber-reproduction-app
//
//  Created by Gabriele sacramento carvalho de jesus on 27/10/25.
//
import SwiftUI

struct LocationSearchActivationView: View {
	var body: some View {
		HStack {
			
			Image(systemName: "magnifyingglass")
				.padding(.trailing, 8)
				.padding(.leading, 16)
			
			Text("Para onde?")
				.foregroundColor(Color(.darkGray))
			
			Spacer()
		}
		.frame(width: UIScreen.main.bounds.width - 64,
			   height: 50)
		.background(
			Rectangle()
				.fill(Color(.white))
				.cornerRadius(8)
				.shadow(color: .gray ,radius: 5)
		)
	}
}
