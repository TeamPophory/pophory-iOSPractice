//
//  AlbumIconView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 7/10/24.
//

import SwiftUI

struct AlbumIconView: View {
    @Binding var isSelectedIcon: UUID
    let element: AlbumIconModel
    
    var body: some View {
        return (element.id == isSelectedIcon ? selectIcon(for: isSelectedIcon): element.iconImage)
    }
    
    private func selectIcon(for id: UUID) -> Image {
        if let index = AlbumIconModel.albumIcons.firstIndex(where: {$0.id == id}) {
            return AlbumSelectIconModel.albumSelectIcons[index].iconImage
        }
        return Image(systemName: "circle")
    }
}
