//
//  ContentView.swift
//  MobileUP Gallery
//
//  Created by Глеб Хамин on 06.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingPhotos = true

    private var columns: [GridItem] = [
            GridItem(.fixed(50), spacing: 16),
            GridItem(.fixed(50), spacing: 16),
            GridItem(.fixed(50), spacing: 16)
        ]

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        isShowingPhotos = true
                    }) {
                        Text("Фото")
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(isShowingPhotos ? Color.white : Color.clear)
                            .fontWeight(isShowingPhotos ? .bold : .regular)
                            .cornerRadius(7)
                    }
                    Button(action: {
                        isShowingPhotos = false
                    }) {
                        Text("Видео")
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(isShowingPhotos ? Color.clear : Color.white)
                            .fontWeight(isShowingPhotos ? .regular : .bold)
                            .cornerRadius(7)
                    }
                }
                .font(.system(size: 13))
                .frame(height: 32)
                .padding(2)
                .background(Color.black.opacity(0.12))
                .cornerRadius(8)
                .padding(.top, 10)
                .padding(.leading, 16)
                .padding(.trailing, 16)

                ScrollView {
                    LazyVGrid(
                        columns: columns,
                        alignment: .center,
                        spacing: 16,
                        pinnedViews: [.sectionHeaders, .sectionFooters]
                    ) {
                        Section(header: Text("Section 1").font(.title)) {
                                            ForEach(0...10, id: \.self) { index in
                                            }
                                        }
                    }
                }
            }

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
