//
//  YunseoView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 6/26/24.
//

import SwiftUI

struct YunseoView: View {
    var body: some View {
		TabView {
			HomeView()
				.tabItem {
					Image(uiImage: .checkmark)
					Text("내 서랍")
				}
			
			MyPageView()
				.tabItem {
					Image(uiImage: .strokedCheckmark)
					Text("마이")
				}
		}
		.tint(.purple)
    }
}

#Preview {
    YunseoView()
}
