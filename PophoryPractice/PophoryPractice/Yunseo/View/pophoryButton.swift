//
//  pophoryButton.swift
//  PophoryPractice
//
//  Created by 강윤서 on 7/18/24.
//

import SwiftUI

struct PophoryButton: ButtonStyle {
	var height: CGFloat = 60
	
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
			.frame(maxWidth: .infinity, maxHeight: height)
			.padding([.leading, .trailing])
            .background(.black)
            .foregroundStyle(.white)
            .clipShape(Capsule())
			.fontWeight(.heavy)
    }
}
