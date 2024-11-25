//
//  VideosView.swift
//  MobileUP Gallery
//
//  Created by Глеб Хамин on 25.11.2024.
//

import SwiftUI

struct VideosView: View {
    let photos: [String] = Array(repeating: "video", count: 10)
    let text: [String] = Array(repeating: "Экскурсия по нашему уютному офису на Владимирской", count: 10)

    let columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 4) {
                ForEach(0..<photos.count, id: \.self) { index in
                    ZStack(alignment: .bottomTrailing) {
                        Image(photos[index])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 210)
                            .clipped()
                        Text(text[index])
                            .font(.system(size: 13))
                            .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 12))
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(16)
                            .padding(.trailing, 16)
                            .padding(.bottom, 16)
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.6)
                    }

                }
            }
        }
    }
}
