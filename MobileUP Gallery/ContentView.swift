//
//  ContentView.swift
//  MobileUP Gallery
//
//  Created by Глеб Хамин on 06.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "videos"

    var body: some View {
        NavigationStack {
            VStack {
                Picker("Выберите раздел", selection: $selectedTab) {
                    Text("Фото").tag("photos")
                    Text("Видео").tag("videos")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.top, 10)
                .padding(.leading, 16)
                .padding(.trailing, 16)

                if selectedTab == "photos" {
                    PhotosView()
                } else {
                    VideosView()
                }
            }

            Spacer()

                .navigationTitle("MobileUp Gallery")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Exit button tapped")
                        }) {
                            Text("Выход")
                        }
                        .foregroundColor(.black)
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
