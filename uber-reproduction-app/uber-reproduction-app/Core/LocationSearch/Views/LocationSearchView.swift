//
//  LocationSearchView.swift
//  uber-reproduction-app
//
//  Created by Gabriele sacramento carvalho de jesus on 30/10/25.
//

import SwiftUI

struct LocationSearchView: View {
	@State private var startLocationText = ""
	@State private var desnitationLocation = ""
	@StateObject var viewModel =  LocationSearchViewModel()
	
	var body: some View {
		VStack {
			HStack {
				VStack{
					Circle()
						.fill(Color(.systemGray3))
						.frame(width: 6, height: 6)
					
					Rectangle()
						.fill(Color(.systemGray3))
						.frame(width: 1, height: 24)
					
					Rectangle()
						.fill(.black)
						.frame(width: 6, height: 6)
				}
				
				VStack{
					TextField("Localização atual", text: $startLocationText)
						.padding(.leading)
						.frame(height: 32)
						.background(Color(
							.systemGroupedBackground))
						.padding(.trailing)
					
					TextField("Para onde", text:
								$viewModel.queryFragment)
						.padding(.leading)
						.frame(height: 32)
						.background(Color(
							.systemGray4))
						.padding(.trailing)
				}
			}
			.padding(.horizontal)
			.padding(.top, 72)
			
			Divider()
				.padding(.vertical)
			
			ScrollView {
					VStack(alignment: .leading) {
						ForEach(viewModel.results, id: \.self) { results in
							LocationSearchResultCell(
								title: results.title, subtitle: results.subtitle
							)
						}
					}
				}
		}
		.background(.white)
	}
}

