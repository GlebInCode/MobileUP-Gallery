//
//  ContentView.swift
//  MobileUP Gallery
//
//  Created by Глеб Хамин on 06.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingPhotos = true

    var body: some View {
        VStack {
                    Text("MobileUp Gallery")
                        .font(.title)
                        .padding()

                    HStack {
                        Button(action: {
                            isShowingPhotos = true
                        }) {
                            Text("Фото")
                                .padding()
                                .background(isShowingPhotos ? Color.blue : Color.gray)
                                .foregroundColor(isShowingPhotos ? Color.white : Color.black)
                                .cornerRadius(10)
                        }
                        Button(action: {
                            isShowingPhotos = false
                        }) {
                            Text("Видео")
                                .padding()
                                .background(isShowingPhotos ? Color.gray : Color.blue)
                                .foregroundColor(isShowingPhotos ? Color.black : Color.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()

                    if isShowingPhotos {
                        Text("Фото")
                    } else {
                        Text("Видео")
                    }
                }
    }
}

#Preview {
    ContentView()
}
