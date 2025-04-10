//
//  CoverImageView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 10/4/25.
//

import SwiftUI

struct CoverImageView: View {
    let coverImages: [String]
    var body: some View {
        TabView {
            ForEach(coverImages, id: \.self) { item in
                AsyncImage(url: URL(string: item)) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    } else if phase.error != nil {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .foregroundColor(.gray)
                    } else {
                        ProgressView()
                            .frame(width: 200, height: 200)
                    }
                }
                
            } //: Loop
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView(coverImages: ["https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"])
}
