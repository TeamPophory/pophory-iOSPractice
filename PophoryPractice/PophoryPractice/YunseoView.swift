//
//  YunseoView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 6/26/24.
//

import SwiftUI

struct YunseoView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: SelectAlbumCoverView()) {
                HomeView()
            }
            .navigationTitle("Pophory")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    YunseoView()
}
