//
//  HomeView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 7/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
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
}

#Preview {
    HomeView()
}
