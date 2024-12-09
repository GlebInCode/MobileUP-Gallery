//
//  ShareSheet.swift
//  MobileUP Gallery
//
//  Created by Глеб Хамин on 27.11.2024.
//

import SwiftUI

struct ShareSheet: UIViewControllerRepresentable {
    let items: [Any]

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        return activityVC
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // Здесь можно обновить представление, если это необходимо
    }
}
