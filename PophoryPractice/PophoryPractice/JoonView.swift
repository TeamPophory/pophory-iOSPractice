//
//  JoonView.swift
//  PophoryPractice
//
//  Created by 강윤서 on 6/26/24.
//

import SwiftUI

struct JoonView: View {
    @State private var currentIndex: Int = 0
    @State private var selectedImageIndex: Int? = 0
    @Environment(\.dismiss) private var dismiss
    
    private let buttonImages: [String] = ["album_cover_1",
                                          "album_cover_2",
                                          "album_cover_3",
                                          "album_cover_4"]
    
    private let buttonSelected: [String] = ["album_cover_profile_1",
                                            "album_cover_profile_2",
                                            "album_cover_profile_3",
                                            "album_cover_profile_4"]
    
    private let images: [String] = ["ic_album_cover_family_1",
                                    "ic_album_cover_family_2",
                                    "ic_album_cover_friends_1",
                                    "ic_album_cover_friends_2",
                                    "ic_album_cover_love_1",
                                    "ic_album_cover_love_2",
                                    "ic_album_cover_me_1",
                                    "ic_album_cover_me_2"]
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                HStack(spacing: 18) {
                    ForEach(0..<buttonImages.count) { index in
                        Image(getButtonImage(for: index))
                            .onTapGesture {
                                selectedImageIndex = index
                                currentIndex = (selectedImageIndex ?? 0) * 2
                            }
                    }
                }
                
                Spacer()
                
                ZStack {
                    ForEach(0..<images.count, id: \.self) { index in
                        Image(images[index])
                            .resizable()
                            .frame(width: 280, height: 380)
//                            .cornerRadius(25, corners: [.topRight, .bottomRight])
//                            .cornerRadius(4, corners: [.topLeft, .bottomLeft])
                            .opacity(currentIndex == index ? 1.0 : 0.5)
                            .offset(x: CGFloat(index - currentIndex) * 296, y: 0)
                    }
                }
                .gesture(
                    DragGesture()
                        .onEnded({ value in
                            let threshold: CGFloat = 50
                            if value.translation.width > threshold {
                                withAnimation {
                                    currentIndex = max(0, currentIndex - 1)
                                }
                            } else if value.translation.width < -threshold {
                                withAnimation {
                                    currentIndex = min(images.count - 1, currentIndex + 1)
                                }
                            }
                            updateSelectedImageIndex()
                        })
                )
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Text("수정하기")
                        .padding(.horizontal, 0)
                        .padding(.top, 22)
                        .padding(.bottom, 21)
                        .frame(width: 335, height: 60, alignment: .center)
                        .font(.system(size: 18, weight: .semibold))
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
                
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
    private func getButtonImage(for index: Int) -> String {
        return selectedImageIndex == index ? buttonSelected[index] : buttonImages[index]
    }
    
    private func updateSelectedImageIndex() {
        selectedImageIndex = currentIndex / 2
    }
}

#Preview {
    JoonView()
}
