//
//  TabView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 7/31/24.
//

import SwiftUI

struct TabView: View {
    var body: some View {
		TabView {
			HomeView()
			MyPageView()
		}
	}
}

#Preview {
    TabView()
}
