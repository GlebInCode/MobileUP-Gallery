//
//  LoginScreen.swift
//  MobileUP Gallery
//
//  Created by Глеб Хамин on 18.11.2024.
//

import SwiftUI

struct LoginScreen: View {
    @State private var isShowingPhotos = true

    var body: some View {
        VStack {
            HStack {
                Text("Mobile Up\nGallery")
                    .fontWeight(.bold)
                    .font(.system(size: 44))
                    .padding(.leading, 24)
                    .padding(.top, 126)
                Spacer()
            }
            Spacer()
            Button(action: {
                isShowingPhotos = false
            }) {
                Text("Вход через VK")
                    .foregroundColor(.white)
            }
            .frame(height: 52)
            .frame(maxWidth: .infinity)
            .background(Color(.black))
            .cornerRadius(12)
            .padding(.bottom, 8)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
    }
}

#Preview {
    LoginScreen()
}


