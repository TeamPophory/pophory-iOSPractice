//
//  SelectAlbumCoverView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 7/10/24.
//

import SwiftUI

struct SelectAlbumCoverView: View {
    @State private var selectedIcon: AlbumIconModel?
    let rows = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            Spacer()
            
            LazyHGrid(rows: rows, spacing: 18) {
                ForEach(AlbumIconModel.albumIcons, id: \.id) { element in
                    element.iconImage
                        .onTapGesture {
                            selectedIcon = element
                        }
                }
            }
            .frame(width: .infinity, height: 50)
            .background(Color.gray)
            
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
            }
            .frame(width: .infinity, height: 380)
            .background(Color.red)
            
            Spacer()
        }
    }
}

#Preview {
    SelectAlbumCoverView()
}
