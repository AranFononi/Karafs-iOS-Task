//
//  ProductListRowView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI
import Network

struct ProductListRowView: View {
    var productTitle: String
    var productRate: Double
    var productThumbnail: String?
    @StateObject private var networkMonitor = NetworkMonitor()
    
    var body: some View {
        
        
        // Base
        HStack(alignment: .center, spacing: 16) {
            
            // Icon
            VStack {
                if networkMonitor.isConnected && productThumbnail != nil {
                    AsyncImage(url: URL(string: productThumbnail!)) { phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                        } else if phase.error != nil {
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.gray)
                        } else {
                            ProgressView()
                                .frame(width: 30, height: 30)
                        }
                    }
                    IconView(rate: productRate, size: 15)
                } else {
                    IconView(rate: productRate)
                }
               
            }
            
            
            VStack(alignment:.leading, spacing: 8) {
                
                // Title
                Text(productTitle)
                    .font(.system(size: 15, weight: .bold))
                    .foregroundStyle(.primary)
                    .lineLimit(1)
                
                
                // Rate Stars
                RateView(rate: productRate)
                
            } //: VStack
        } //: HStack
        
    }
}

#Preview {
    ProductListRowView(productTitle: "Essence Mascara Lash Princess", productRate: 1.5)
}
