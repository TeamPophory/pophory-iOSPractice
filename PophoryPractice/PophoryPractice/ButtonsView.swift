//
//  ButtonsView.swift
//  PophoryPractice
//
//  Created by Joon Baek on 2024/06/27.
//

import SwiftUI

struct ButtonsView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) { }
        .padding(.horizontal, 0)
        .padding(.top, 22)
        .padding(.bottom, 21)
        .frame(width: 335, height: 60, alignment: .center)
        .background(Color(red: 0.13, green: 0.13, blue: 0.13))
        .cornerRadius(30)
    }
}

#Preview {
    ButtonsView()
}
