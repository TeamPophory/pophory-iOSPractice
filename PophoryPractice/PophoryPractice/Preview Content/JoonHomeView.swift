//
//  JoonHomeView.swift
//  PophoryPractice
//
//  Created by Joon Baek on 2024/07/18.
//

import SwiftUI

struct JoonHomeView: View {
    @State private var isShowingJoonView = false
    
    var body: some View {
        NavigationStack {
            Button("버튼") {
                isShowingJoonView = true
            }
            .navigationDestination(isPresented: $isShowingJoonView) {
                JoonView()
            }
        }
    }
}

#Preview {
    JoonHomeView()
}
