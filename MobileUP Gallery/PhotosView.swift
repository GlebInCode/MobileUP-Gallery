//
//  PhotosView.swift
//  MobileUP Gallery
//
//  Created by Глеб Хамин on 25.11.2024.
//

import SwiftUI

struct PhotosView: View {
    let photos: [String] = Array(repeating: "photo", count: 10)

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        let itemSize = (screenWidth - 4) / 2
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<photos.count, id: \.self) { index in
                    Image(photos[index])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: itemSize, height: itemSize)
                        .clipped()
                }
            }
        }
    }
}
