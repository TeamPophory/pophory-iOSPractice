//
//  ContentView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 6/26/24.
//

import SwiftUI

struct ContentView: View {
	@EnvironmentObject private var appState: AppState
	
    var body: some View {
        YunseoView()
    }
}

#Preview {
    ContentView()
		.environmentObject(AppState())
}
