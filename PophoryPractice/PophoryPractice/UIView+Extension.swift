//
//  UIView+Extension+.swift
//  PophoryPractice
//
//  Created by Joon Baek on 2024/06/28.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
