//
//  YunseoView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 6/26/24.
//

import SwiftUI

struct YunseoView: View {
	@EnvironmentObject var appState: AppState
	
    var body: some View {
		Group {
			if appState.isLoggedIn {
				PophoryTabView()
			} else {
				OnboardingView()
			}
		}
    }
}

#Preview {
    YunseoView()
		.environmentObject(AppState())
}
