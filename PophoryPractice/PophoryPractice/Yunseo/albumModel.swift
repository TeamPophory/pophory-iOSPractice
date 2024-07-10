//
//  listModel.swift
//  PophoryPractice
//
//  Created by 강윤서 on 7/10/24.
//

import SwiftUI

struct AlbumCoverModel: Identifiable {
    let id = UUID()
    let coverImage: Image
}

struct AlbumIconModel: Identifiable {
    let id = UUID()
    let iconImage: Image
}

struct AlbumSelectIconModel: Identifiable {
    let id = UUID()
    let iconImage: Image
}

extension AlbumCoverModel {
    static var albumCovers: [AlbumCoverModel] = [
        AlbumCoverModel(coverImage: Image(.icAlbumCoverFamily1)),
        AlbumCoverModel(coverImage: Image(.icAlbumCoverFamily2)),
        AlbumCoverModel(coverImage: Image(.icAlbumCoverLove1)),
        AlbumCoverModel(coverImage: Image(.icAlbumCoverLove2)),
        AlbumCoverModel(coverImage: Image(.icAlbumCoverFriends1)),
        AlbumCoverModel(coverImage: Image(.icAlbumCoverFriends2)),
        AlbumCoverModel(coverImage: Image(.icAlbumCoverMe1)),
        AlbumCoverModel(coverImage: Image(.icAlbumCoverMe2)),
    ]
}

extension AlbumIconModel {
    static var albumIcons: [AlbumIconModel] = [
        AlbumIconModel(iconImage: Image(.albumCover1)),
        AlbumIconModel(iconImage: Image(.albumCover2)),
        AlbumIconModel(iconImage: Image(.albumCover3)),
        AlbumIconModel(iconImage: Image(.albumCover4))
    ]
}

extension AlbumSelectIconModel {
    static var albumSelectIcons: [AlbumSelectIconModel] = [
        AlbumSelectIconModel(iconImage: Image(.albumCoverProfile1)),
        AlbumSelectIconModel(iconImage: Image(.albumCoverProfile2)),
        AlbumSelectIconModel(iconImage: Image(.albumCoverProfile3)),
        AlbumSelectIconModel(iconImage: Image(.albumCoverProfile4))
    ]
}
