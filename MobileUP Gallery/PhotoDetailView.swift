//
//  PhotoDetailView.swift
//  MobileUP Gallery
//
//  Created by Глеб Хамин on 27.11.2024.
//

import SwiftUI

struct PhotoDetailView: View {
    let photo: String

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            Image(photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .navigationTitle(photo)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                ShareButton(photo: photo)
            }
        }
    }
}
