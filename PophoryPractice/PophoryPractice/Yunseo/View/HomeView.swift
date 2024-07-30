//
//  HomeView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 7/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
		NavigationStack {
			VStack {
				HStack {
					Text("Pophory")
						.font(.system(size: 40))
						.fontWeight(.heavy)
						.padding(.init(top: 26, leading: 20, bottom: 0, trailing: 0))
					
					Spacer()
				}
				
				HStack {
					Text("포포리 앨범에\n소중한 추억을 보관해봐!")
						.padding(.leading, 20)
						.font(.system(size: 24))
						.fontWeight(.semibold)
					
					Spacer()
					
					NavigationLink {
						SelectAlbumCoverView()
							.toolbar(.hidden, for: .tabBar)
							.navigationTitle("앨범 테마")
					} label: {
						Image(uiImage: .add)
							.padding(.top, 34)
					}
					
					Spacer()
				}
				.padding(.top, 25)
				
				NavigationLink {
					AlbumDetailView()
						.toolbar(.hidden, for: .tabBar)
						.navigationTitle("앨범")
				} label: {
					Image(.icAlbumCoverFamily1)
						.resizable()
						.frame(width: 280, height: 380)
						.clipShape(
							.rect(
								topLeadingRadius: 4,
								bottomLeadingRadius: 4,
								bottomTrailingRadius: 26,
								topTrailingRadius: 26,
								style: .circular)
						)

				}	
				.padding(.top, 36)
				Spacer()
			}
		}
	}
}

#Preview {
    HomeView()
}
