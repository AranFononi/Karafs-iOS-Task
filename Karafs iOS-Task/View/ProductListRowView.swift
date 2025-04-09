//
//  ProductListRowView.swift
//  Karafs iOS-Task
//
//  Created by Aran Fononi on 9/4/25.
//

import SwiftUI

struct ProductListRowView: View {
    var productTitle: String
    var productRate: Double
    var body: some View {
        ZStack {
            // Background
            Rectangle()
                .fill(.gray.opacity(0.2))
                .clipShape(.rect(cornerRadius: 19, style: .continuous))
                .shadow(color: Color.black.opacity(1), radius: 20, x: 4, y: 4)
            
            
            // Base
            HStack(spacing: 20) {
                
                // Icon
                IconView(rate: productRate)
                    .font(.system(size: 30))
                
                VStack(alignment:.leading, spacing: 9) {
                    
                    // Title and Rating
                    HStack {
                        Text(productTitle)
                            .font(.system(size: 15, weight: .bold))
                            .foregroundStyle(.primary)
                    } //: HStack Title
                    
                    // Rate Stars
                    RateView(rate: productRate)
                    
                } //: VStack
            } //: HStack
        } //: ZStack
        .frame(minWidth : 0, maxWidth: 350, minHeight: 0 , maxHeight: 110)
    }
}

#Preview {
    ProductListRowView(productTitle: "Essence Mascara Lash Princess", productRate: 4.2)
}
