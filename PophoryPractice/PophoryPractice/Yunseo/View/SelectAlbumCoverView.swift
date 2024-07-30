//
//  SelectAlbumCoverView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 7/10/24.
//

import SwiftUI

struct SelectAlbumCoverView: View {
    @State private var selectedIcon: UUID = AlbumIconModel.albumIcons.first!.id
    @Environment(\.dismiss) private var dismiss
    let rows = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            Spacer()
            
            LazyHGrid(rows: rows, spacing: 18) {
                ForEach(AlbumIconModel.albumIcons, id: \.id) { element in
                    AlbumIconView(isSelectedIcon: $selectedIcon, element: element)
                        .onTapGesture {
                            selectedIcon = element.id
                        }
                }
            }
            .frame(width: .infinity, height: 50)
            
            Spacer()
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, spacing: 16, content: {
                    ForEach(AlbumCoverModel.albumCovers, id: \.id) { element in
                        element.coverImage
                            .resizable()
                            .clipShape(
                                .rect(topLeadingRadius: 4,
                                      bottomLeadingRadius: 4,
                                      bottomTrailingRadius: 26,
                                      topTrailingRadius: 26,
                                      style: .circular)
                            )
                            .frame(width: 280, height: 380)
                    }
                })
				.padding([.leading, .trailing], 48)
            }
			.scrollIndicators(.hidden, axes: .horizontal)
            .frame(width: .infinity, height: 380)
            
            Spacer()
            
            Button(action: {
                dismiss()
            }, label: {
                Text("수정하기")
            })
			.buttonStyle(PophoryButton())
			.frame(width: 335)
            
            Spacer()
        }
    }
}

#Preview {
    SelectAlbumCoverView()
}
