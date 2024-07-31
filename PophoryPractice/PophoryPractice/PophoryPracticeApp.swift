//
//  PophoryPracticeApp.swift
//  PophoryPractice
//
//  Created by 강윤서 on 6/26/24.
//

import SwiftUI

@main
struct PophoryPracticeApp: App {
	@StateObject private var appState = AppState()
	
    var body: some Scene {
        WindowGroup {
            YunseoView()
				.environmentObject(appState)
        }
    }
}
