//
//  SharedButton.swift
//  MobileUP Gallery
//
//  Created by Глеб Хамин on 27.11.2024.
//

import SwiftUI

struct ShareButton: View {
    @State private var isSharing = false
    let photo: String

    var body: some View {
        Button(action: {
            isSharing = true
        }) {
            Image(systemName: "square.and.arrow.up")
                .foregroundColor(.black)
        }
        .sheet(isPresented: $isSharing) {
            ShareSheet(items: [UIImage(named: photo)!])
                .presentationDetents([.fraction(0.5)])
        }
    }
}
