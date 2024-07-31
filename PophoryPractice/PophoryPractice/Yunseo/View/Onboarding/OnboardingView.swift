//
//  OnboardingView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 7/30/24.
//

import SwiftUI

struct OnboardingView: View {
	var image: [Image] = [
		Image(.imgOnboarding01),
		Image(.imgOnboarding02),
		Image(.imgOnboarding03),
		Image(.imgOnboarding04),
	]
	@State private var selectedIndex = 0
	@EnvironmentObject private var appState: AppState
	@GestureState private var dragAmount = CGSize.zero
	
	var body: some View {
		VStack {
			TabView(selection: $selectedIndex) {
				ForEach(0..<4, id: \.self) { index in
					image[index]
						.resizable()
						.scaledToFit()
						.tag(index)
						.frame(maxWidth: .infinity, maxHeight: .infinity)
				}
			}
			.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
			
			HStack {
				ForEach(0..<4) { index in
					Circle()
						.fill(index == selectedIndex ? .gray500 : .gray400)
						.frame(width: 9, height: 9)
				}
			}
			
			Text("SNS로 간편가입하기!")
				.foregroundStyle(.gray500)
				.font(.system(size: 16))
				.padding(.top, 42)
			
			Button("AppleID로 시작하기") {
				appState.isLoggedIn = true
			}
			.buttonStyle(PophoryButton())
			.padding([.leading, .trailing], 20)
			.padding(.top, 14)
		}
	}
}

#Preview {
	OnboardingView()
}
